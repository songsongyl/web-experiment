<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List<com.kesheExample.entity.News>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除新闻</title>
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
            outline: none;
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
    <form  id="deleteForm" action="nefu/deletenews" method="post">
        <table>
            <tr>
                <th>序号</th>
                <th>标题</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${newsList}" var="news">
                <tr>
                    <td>${news.id}</td>
                    <td>${news.title}</td>
                    <td><button class="btn" type="button" onclick="deleteNews(${news.id})">删除</button></td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
<script>
    function deleteNews(newsId) {
        if (confirm('确认要删除这条新闻吗？')) {
            var form = document.getElementById('deleteForm');
            // 创建一个隐藏的input元素，用于提交新闻ID
            var hiddenInput = document.createElement('input');
            hiddenInput.type = 'hidden';
            hiddenInput.name = 'id';
            hiddenInput.value = newsId;
            form.appendChild(hiddenInput);
            // 提交表单
            form.submit();
        }
    }
</script>
</body>
</html>