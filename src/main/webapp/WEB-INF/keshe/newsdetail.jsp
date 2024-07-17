<jsp:useBean id="news" scope="request" type="com.kesheExample.entity.News"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List<com.kesheExample.entity.News>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻详情</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
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

    .news-detail {
        /*margin: auto;*/
        background: #fff;
        width: 60%;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        display: inline-block;
        position: relative;
        /*flex: 1;*/
    }

    .news-header {
        text-align: center;
    }

    .news-title {
        font-size: 2.5em;
        margin-bottom: 20px;
        color: #333;
    }

    .news-meta {
        font-size: 0.9em;
        color: #666;
        margin-bottom: 30px;
    }

    .news-content {
        margin-bottom: 20px;
    }

    .news-content p {
        line-height: 1.6;
        font-size: 1em;
        color: #333;
    }

    .news-image {
        text-align: center;
        margin-top: 20px;
    }

    .news-img {
        max-width: 100%;
        height: auto;
        border-radius: 4px;
    }
    .sidebar {
        width: 350px;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        display: inline-block;
        position: absolute;
        left: 900px;
        top: 20%;
    }

    .sidebar h3 {
        margin-bottom: 15px;
        color: #333;
    }

    .recommendations {
        list-style: none;
        padding: 0;
    }

    .recommendations li {
        margin-bottom: 10px;
    }

    .recommendations li button {
        text-decoration: none;
        color: #007bff;
        font-size: 16px;
        outline: none;
        border: none;
    }

    .recommendations li button:hover {
        text-decoration: underline;
    }

    @media (max-width: 1200px) {
        .sidebar {
            display: none;
        }
        .news-detail {
            width: 100%;
        }
    }
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
</head>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
    </div>
    <div class="news-detail">
        <div class="news-header">
            <h1 class="news-title">${news.title}</h1>
            <p class="news-meta">作者: ${news.author} | 发布日期: ${news.publishDate}</p>
        </div>
        <div class="news-content">
            <p>${news.content}</p>
        </div>
        <div class="news-image">
            <img src="img/news0${news.id}.png" alt="新闻图片" class="news-img">
        </div>
    </div>
    <div class="sidebar">
        <h3>推荐新闻</h3>
        <form id="form" action="nefu/newsdetail" method="post">
        </form>
        <ul class="recommendations">
                <c:if test="${not empty newsList}">
                    <c:forEach items="${newsList}" var="n">
                        <c:if test="${n.id != news.id}">
                            <li>
<%--                                    ${n.title}--%>
                                <button class="other" type="button" onclick="otherNews(${n.id})">${n.title}</button>
                            </li>
                        </c:if>
                    </c:forEach>
                </c:if>
        </ul>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    function otherNews(newsId) {
    if (confirm('确认要查询这条新闻吗？')) {
        var form = document.getElementById('form'); // 获取表单
        if (form) {
            // 创建一个隐藏的input元素，用于提交新闻ID
            var hiddenInput = document.createElement('input');
            hiddenInput.type = 'hidden';
            hiddenInput.name = 'id';
            hiddenInput.value = newsId;
            form.appendChild(hiddenInput);
            // 提交表单
            form.submit();
        } else {
            console.error('表单元素未找到');
        }
    }}
</script>
</body>
</html>