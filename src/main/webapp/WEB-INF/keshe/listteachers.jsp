<%--<jsp:useBean id="title" scope="request" type="com.kesheExample.entity.Teacher.Title"/>--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="teachers" scope="request" type="java.util.List<com.kesheExample.entity.Teacher>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>教师列表</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

        }
        .content {
            font-size: 2em;
            margin: 50px;
        }
        .content img {
            border-radius: 50%;
            margin-right: 20px;
            width: 90px;
            height: 90px;
        }
        .content img:hover {
            transform: scale(1.5);
        }
        .content li {
            padding: 20px;
            display: flex;
        }
        .content ul {
            list-style: none;
            padding: 5px;
        }
        .content p {
            color: #e0a800;
        }
        .content li a {
            text-decoration: none;
            padding: 3px;
        }
        .footer {
            background-color: darkcyan;
            color: white;
            text-align: center;
            padding: 2px 0;
            position: fixed;
            bottom: 0;
        }
        .col-md-12 {width: 100%;}
    </style>
</head>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
    </div>
    <div class="content">
        <p>点击名字跳转详细界面</p>
        <%--<ul>--%>
        <%--    <li><a href="nefu/listteachers?title=PROFESSOR">教授</a></li>--%>
        <%--    <li><a href="nefu/listteachers?title=ASSPRO">副教授</a></li>--%>
        <%--    <li><a href="nefu/listteachers?title=LECTURE">讲师</a></li>--%>
        <%--</ul>--%>
        <ul>
            <c:forEach var="teacher" items="${teachers}">
                <li><img src="img/pro2.png" >
                    <a href="nefu/teacherdetail?id=${teacher.id}">${teacher.name}</a> - ${teacher.title}</li>
            </c:forEach>
        </ul>
    </div>
    <div class="footer col-md-12">
            <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>

</body>
</html>