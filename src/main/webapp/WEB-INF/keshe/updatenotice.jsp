<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="noticesList" scope="request" type="java.util.List<com.kesheExample.entity.Notice>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>更新公告</title>
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
        <h3>更新公告</h3>
        <form action="nefu/updatenotice" method="post">
            <label for="noticeId">选择公告:</label>
            <input type="text" list="noticeOptions" id="noticeId" name="noticeId">
            <datalist id="noticeOptions">
                <c:forEach items="${noticesList}" var="notice">
                    <option value="${notice.id}">${notice.title}</option>
                </c:forEach>
            </datalist>

            <!-- 更新字段的下拉选择 -->
            <label for="updateFields">更新的字段:</label>
            <select name="updateField" id="updateFields">
                <option value="title">标题</option>
                <option value="content">内容</option>
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