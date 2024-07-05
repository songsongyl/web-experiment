<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        #register {
            background-color: palevioletred;
            width: 960px;
            margin: auto;
            padding: 100px;
            color: white;
            text-align: center;

        }
        button {
            background-color: orange;
            border-radius: 5px;
            width: 50px;
            height: 32px;
            margin-left: auto;
            padding: 3px;
        }
    </style>
</head>
<body>
<div id="register">
    <h3>欢迎注册</h3>
    <form action="/web_experiment_war_exploded/nefu/register" method="post" id="registerForm">
        请选择身份:
        <select name="identity" id="">
            <option value="USER">用户</option>
            <option value="ADMIN">管理员</option>
        </select>
        <br>
        <label >用户名：<input type="text" name="username" placeholder="用户名长度不能少于4个字符"></label><br>
        <label >密码：<input type="password" name="password" id="password" placeholder="密码6-9个字符"></label><br>
        <label >密码：<input type="password" name="confirm_password" id="confirm_password" placeholder="请再次输入密码"></label><br>
        <label >手机号：<input type="text" name="phone" placeholder="长度为11个字符且必须是数字"></label><br>
        性别：
        <label>
            <input type="radio" name="sex" >男
        </label>
       <input type="radio" name="sex" id="sex">女
        <label for="sex" generated="true" class="error"></label>
        <br>
        <label ><input type="text" name="age">年龄在18-28之间</label>
        <br>
        <button type="submit">注册</button>
    </form>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/jQeury.validate.js"></script>

<script>
    $(function (){
        $("$registerForm").validate({
            rules:{
                username:{
                    required:true,
                    minlength:4
                },
                password:{
                    required: true,
                    minlength: 6,
                    maxlength:9,
                },
                confirm_password:{
                    required:true,
                    minlength: 6,
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
                    minlength: "密码长度不能少于6个字符",
                    maxlength:"密码长度不能多于9个字符",
                },
                confirm_password:{
                    required:"确认密码必须填写",
                    minlength: "密码长度不能少于6个字符",
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
            }
        })
    })
</script>
</body>
</html>