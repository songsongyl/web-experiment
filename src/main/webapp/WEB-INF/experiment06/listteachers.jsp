<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="teachers" scope="request" type="java.util.List<com.example02.entity.Teacher>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
</head>
<body>
    <table>
        <tr>
            <td>#</td>
            <td>姓名</td>
            <td>注册时间</td>
        </tr>

        <c:forEach items="${teachers}" var="t" varStatus="s">
            <tr>
                <td>${s.count}</td>
                //链接地址中传参
                <td><a href="updateteacher?tid=${t.id}">${t.name}</a></td>
                <td>${t.insertDate}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>