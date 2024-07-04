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
        #login {
            background-color: palevioletred;
            width: 400px;
            margin: auto;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="login">
    <form method="post" action="nefu/login">
        身份：
        <select name="identity">
            <option value=""></option>
            <option value="ADMIN">管理员</option>
            <option value="USER">普通用户</option>
        </select>
        <label>用户名：<input type="text" name="username"></label>
        <br>
        <label>密码：<input type="password" name="password"></label>
        <br>
        <button type="submit">登录</button>
    </form>
</div>
</body>
</html>