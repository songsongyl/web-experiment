<jsp:useBean id="user" scope="request" type="com.example04.entity.User"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
用户ID：${user.id } <br>
用户名：${user.name } <br>
添加时间：${user.insertTime }<br>
更新时间：${user.updateTime}
</body>
</html>