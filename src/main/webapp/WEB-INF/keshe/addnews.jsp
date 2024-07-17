<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加新闻</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }

        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-group textarea {
            resize: vertical;
        }

        .form-group button.btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #5cb85c;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group button.btn:hover {
            background-color: #4cae4c;
        }

        /* 响应式调整 */
        @media (max-width: 768px) {
            .container {
                width: 95%;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h3>添加新闻</h3>
    <form action="nefu/addnews" method="post">
        <div class="form-group">
            <label for="newsid">新闻号:</label>
            <input type="text" id="newsid" name="newsId" required>
        </div>
        <div class="form-group">
            <label for="title">新闻标题:</label>
            <input type="text" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="author">作者:</label>
            <input type="text" id="author" name="author" required>
        </div>
        <div class="form-group">
            <label for="content">新闻内容:</label>
            <textarea id="content" name="content" rows="5" required></textarea>
        </div>
        <div class="form-group">
            <label for="image">图片上传:</label>
            <input type="file" id="image" name="image">
        </div>
        <div class="form-group">
            <label for="url">图片地址:</label>
            <input type="text" id="url" name="url">
        </div>
        <div class="form-group">
            <label for="time">发布时间:</label>
            <input type="date" id="time" name="time">
        </div>
        <div class="form-group">
            <button type="submit" class="btn">提交新闻</button>
        </div>
    </form>
</div>
</body>
</html>