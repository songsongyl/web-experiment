<jsp:useBean id="notice" scope="request" type="com.kesheExample.entity.Notice"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="noticesList" scope="request" type="java.util.List<com.kesheExample.entity.Notice>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>公告详情</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            /*display: flex;*/
            /*justify-content: center;*/
            /*align-items: flex-start;*/
        }
        .notice-detail {
            margin-top: 100px;
            background: #fff;
            width: 100%;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .notice-header {
            text-align: center;
        }

        .notice-title {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333;
        }

        .notice-meta {
            font-size: 0.9em;
            color: #e0a800;
            margin-bottom: 30px;
        }

        .notice-content {
            margin-bottom: 20px;
        }

        /*.news-content p {*/
        /*    line-height: 1.6;*/
        /*    font-size: 1em;*/
        /*    color: #333;*/
        /*}*/


        .footer {
            background-color: darkcyan;
            color: white;
            text-align: center;
            padding: 2px 0;
            position: fixed;
            bottom: 0;
        }

        .col-md-6 {width: 50%;}
        .col-md-12 {width: 100%;}

    </style>
    <c:url var="base" value="/"/>
    <base href="${base}">
</head>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
    </div>
    <div class="notice-detail">
        <div class="notice-header">
            <h1 class="notice-title">${notice.title}</h1>
            <p class="notice-meta">发布日期: ${notice.publishTime}</p>
        </div>
        <div class="notice-content">
            <p>${notice.content}</p>
        </div>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>