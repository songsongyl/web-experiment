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
            width: 400px;
            margin: auto;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="register">
    <h3>欢迎注册</h3>
    <form action="">
        请选择身份:
        <select name="" id="">
            <option value="User">用户</option>
            <option value="Admin">管理员</option>
        </select>
        <label >用户名：<input type="text" placeholder="请输入用户名"></label><br>
        <label >密码：<input type="password" placeholder="请输入密码"></label><br>
        <label >手机号：<input type="text" placeholder="请输入手机号"></label><br>
        性别：
        <label ><input type="radio" name="sex">男</label>
        <label ><input type="radio" name="sex">女</label>
    </form>
</div>
</body>
</html>