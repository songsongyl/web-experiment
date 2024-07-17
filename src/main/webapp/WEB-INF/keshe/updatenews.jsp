<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>更新新闻</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

        }

        .content {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .content h3 {
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
        }

        input[type="text"], select {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #0056b3;
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
        <h3>更新新闻</h3>
        <form action="nefu/updatenews" method="post">
            <!-- 用于选择新闻的 input 和 datalist -->
            <label for="newsID">选择新闻:</label>
            <input type="text" list="newOptions" id="newsId" name="newsId">
            <datalist id="newOptions">
                <c:forEach items="${newsList}" var="news">
                    <option value="${news.id}">${news.title}</option>
                </c:forEach>
            </datalist>

            <!-- 更新字段的下拉选择 -->
            <label for="updateFields">更新的字段:</label>
            <select name="updateField" id="updateFields">
                <option value="title">标题</option>
                <option value="content">内容</option>
                <option value="author">作者</option>
                <option value="img_url">图片地址</option>
            </select>

            <!-- 更新的值 -->
            <label for="updateValue">更新的值:</label>
            <input type="text" name="updateValue" id="updateValue" required>

            <!-- 提交按钮 -->
            <button type="submit">提交更新</button>
        </form>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        var updateField = document.getElementById('updateField').value;
        var updateValue = document.getElementById('updateValue').value;

        if (!updateField || !updateValue) {
            alert('请填写所有更新字段。');
            event.preventDefault(); // 阻止表单提交
        }
    });
</script>
</body>
</html>