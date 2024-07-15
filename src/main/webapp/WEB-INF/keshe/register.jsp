<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #register {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        #register h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        #register form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        #register select {
            width: 200px;
        }
        #register label {
            margin-bottom: 10px;
            color: #555;
        }

        #register input, #register select, #register button {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        #register input:focus, #register select:focus {
            border-color: #007BFF;
            outline: none;
        }

        #register button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 150px;
        }

        #register button:hover {
            background-color: #0056b3;
        }
        /* 错误提示信息样式 */
        #register label.error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
            display: block;
        }
    </style>
</head>
<body>
<div id="register">
    <h3>欢迎注册</h3>
    <form action="nefu/register" method="post" id="registerForm">
        <label>请选择身份:<select name="identity" id="">
            <option value="USER">用户</option>
            <option value="ADMIN">管理员</option>
        </select></label>
        <br>
        <label >用户名：<input type="text" name="username" placeholder="用户名长度不能少于4个字符"></label><br>
        <label >密码：<input type="password" name="password" id="password" placeholder="密码5-9个字符"></label><br>
        <label >密码：<input type="password" name="confirm_password" id="confirm_password" placeholder="请再次输入密码"></label><br>
        <label >手机号：<input type="text" name="phone" placeholder="长度为11个字符且必须是数字"></label><br>
        <label for="sex">性别:
        <select id="sex" name="sex" required>
            <option value="MALE">男</option>
            <option value="FEMALE">女</option>
        </select></label><br>
        <label >年龄：<input type="text" name="age" placeholder="年龄在18-28之间"></label>
        <br>
        <button type="submit">注册</button>
    </form>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

<script>
    $(function (){
        $("#registerForm").validate({
            errorClass: "error",
            rules:{
                username:{
                    required:true,
                    minlength:4
                },
                password:{
                    required: true,
                    minlength: 5,
                    maxlength:9,
                },
                confirm_password:{
                    required:true,
                    minlength: 5,
                    maxlength:9,
                    equalTo:"#password"
                },
                phone:{
                    required:true,
                    length:11,
                    number:true
                },
                sex:{required:true},
                age:{
                    required:true,
                    range:[18,28],
                    digits:true
                }
            },
            messages:{
                username: {
                    required:"名字必须填写",
                    minlength:"用户名长度不能少于4个字符"
                },
                password:{
                    required: "密码必须填写",
                    minlength: "密码长度不能少于5个字符",
                    maxlength:"密码长度不能多于9个字符",
                },
                confirm_password:{
                    required:"确认密码必须填写",
                    minlength: "密码长度不能少于5个字符",
                    maxlength:"密码长度不能多于9个字符",
                    equalTo:"确认密码与上面密码相同"
                },
                phone:{
                    required:"电话号码必须填写",
                    length:"长度为11个字符",
                    number:"手机号必须为数字"
                },
                sex:{
                    required:"性别必选其一"
                },
                age:{
                    required:"年龄必须填写",
                    range:"年龄的范围是18-28之间",
                    digits:"必须为整数"
                }
            }, errorPlacement: function(error, element) {
                error.appendTo(element.parent());
            }
        })
    })
</script>
</body>
</html>