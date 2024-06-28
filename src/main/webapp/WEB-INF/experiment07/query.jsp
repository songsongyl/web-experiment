<jsp:useBean id="user" scope="request" type="com.example03.entity.User"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
用户id：${user.id } <br>
用户名称：${user.name } <br>
注册时间：${user.insertTime}<br>
更新时间：${user.updateTime}
</body>
</html>