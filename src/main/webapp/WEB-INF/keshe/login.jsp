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
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        #login {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            /*background-image: url("/img/02.jpg");*/
            /*background-repeat: no-repeat;*/
            /*background-size: cover;*/
        }
        #login img {
            width: 100%;
            height: 100%;
            z-index: 1;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0.8;
        }
        #login h2 {
            margin-bottom: 20px;
            color: black;
        }

        #login form {
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        #login label {
            margin-bottom: 10px;
            color: black;
            width: 100%;
            text-align: left;
        }

        #login input, #login select {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            width: 100%;
        }
        #login input:focus, #login select:focus {
            border-color: #007BFF;
            outline: none;
        }

        #login button {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            margin-left: 300px;
        }

        #login button:hover {
            background-color: #0056b3;
        }

        .register-link {
            margin-top: 290px;
            color: white;
            cursor: pointer;
            text-decoration: none;
            margin-right: 40px;
            background-color: #007BFF;
            position: absolute;
            z-index: 2;
            padding: 5px;
            border-radius: 10px;
        }

        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div id="login">
    <img src="img/01.jpg" alt="">
    <form method="post" action="/web_experiment_war_exploded/nefu/login">
        <label>身份：
        <select name="identity">
<%--            <option value=""></option>--%>
            <option value="ADMIN" selected>管理员</option>
            <option value="USER" >普通用户</option>
        </select></label>
        <br>
        <label>用户名：<input type="text" name="username" value="admin"></label>
        <br>
        <label>密码：<input type="password" name="password" value="admin"></label>
        <br>
        <button type="submit">登录</button>
    </form>
    <a href="nefu/register" class="register-link">没有账号则跳转至注册</a>
</div>
</body>
</html>