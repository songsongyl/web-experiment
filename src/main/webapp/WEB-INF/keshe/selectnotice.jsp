<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="noticesList" scope="request" type="java.util.List<com.kesheExample.entity.Notice>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>公告查询</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

        }

        table {
            margin-top: 50px;
            width: 100%;
            border-collapse: collapse;
        }
        table th ,table td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid gray;
        }

        tbody tr:nth-child(odd) {
            background-color: pink;
        }
        tbody tr:nth-child(even) {
            background-color: #e0a800;
        }
        .btn {
            background-color: darkred;
            border-radius: 8px;
            color: whitesmoke;
            text-decoration: none;
            padding: 3px 5px;
            display: inline-block;
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
    <table>
        <tr>
            <th>序号</th>
            <th>标题</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${noticesList}" var="notice">
            <tr>
                <td>${notice.id}</td>
                <td>${notice.title}</td>
                <td><a class="btn" href="nefu/noticedetail?id=${notice.id}">详细</a></td>
            </tr>
        </c:forEach>
    </table>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
</body>
</html>