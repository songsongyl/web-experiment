<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List<com.kesheExample.entity.News>"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .news-container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="news-container">
    <ul>

        <c:forEach var="news" items="${newsList}">
            <li>
                ${news.id}-${news.title}-${news.publishDate}
            </li>
        </c:forEach>
    </ul>

</div>

</body>
</html>