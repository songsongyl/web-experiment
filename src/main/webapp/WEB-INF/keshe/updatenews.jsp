<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

        }

        .header {
            /*border: 1px solid red;*/
            width: 100%;
            background-color: darkcyan;
            /*overflow: hidden;*/
            position: relative;
            z-index: 1;
            display: flex;
            height: 70px;
        }
        .header img {
            /*border: 1px solid red;*/
            width: 6%;
            height: 100%;
            color:  darkcyan;
            /*display: flex;*/
            /*filter: hue-rotate(120deg);*/
        }
        .header .top {
            list-style: none;
            display: flex;
            /*position: absolute;*/
            /*top:12px;*/
            /*left: 100px;*/

        }
        .top li {
            padding: 10px;
            /*margin: auto;*/
            color: white;
            font-size: 1.2em;
            margin-top: 10px;
        }
        .top li:not(.search):hover {
            background-color: cornflowerblue;
            color: #f08c00;
        }
        .drop {
            display: none;
            /*display: flex;*/
            list-style: none;
            z-index: 10;
            position: absolute;
            flex-direction: column;
            color: #f08c00;
            top: 100%;
            left: 0;
            background-color: royalblue;
        }
        .top li.nav-home a{
            color: white;
            font-size: 20px;
        }
        .drop a:hover {
            color: #ffec99;
        }
        .header li a {
            display: block;
            text-decoration: none;
            font-size: 0.7em;
        }
        .dropdown {
            position: relative;
            display: flex;
        }
        .dropdown:hover .drop{
            display: block;
            color: #f08c00;
        }
        .header .search {
            display: flex;
            position: relative;
            z-index: 1;
            margin-left: 80px;
            margin-top: 8px;
        }
        .search input {
            border-radius: 15px;
            width: 450px;
            height: 30px;
            background-color: white;
            border: 1px solid cornflowerblue;
            outline: none;
        }
        .search input::placeholder {
            font-size: 14px;
            color: #999;
        }

        .search img {
            align-self: center;
            width: 20px;
            height: 15px;
            position: absolute;
            left: 430px;
            z-index: 2;
        }

        .top-right {
            margin-left: 30px;
            /*margin-top: 15px;*/
            outline: none;
            border: none;
            padding: 5px;
            /*margin-right: 10px;*/
        }
        .top-right a {
            width: 75px;
            height: 30px;
            border-radius: 10px;
            background-color: palevioletred;
            display: inline-block;
            padding: 3px;
            text-align: center;
            margin: 10px;
            text-decoration: none;
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
    <div class="header">
        <img src="img/04.jpg" title="校徽" alt="未成功加载">
        <ul class="top">
            <li class="nav-home dropdown"><a href="nefu">首页</a></li>
            <li class="nav-major dropdown">专业介绍
                <ul class="major drop">
                    <li><a href="nefu/major">专业简介</a></li>
                    <li><a href="nefu/direction">方向简介</a></li>
                    <li><a href="nefu/grade">分数线</a></li>
                </ul>
            </li>
            <li class="nav-lab  dropdown">实验室介绍
                <ul class="lab drop">
                    <li><a href="nefu/lab?id=921">921实验室</a></li>
                    <li><a href="nefu/lab?id=923">923创新实验室</a></li>
                    <li><a href="nefu/lab?id=925">925移动开发实验室</a></li>
                </ul>
            </li>
            <li class="nav-teacher  dropdown">教师队伍
                <ul class="teacher drop">
                    <li><a href="nefu/listteachers?title=PROFESSOR">教授</a></li>
                    <li><a href="nefu/listteachers?title=ASSPRO">副教授</a></li>
                    <li><a href="nefu/listteachers?title=LECTURE">讲师</a></li>
                </ul>
            </li>
            <li class="nav-work  dropdown">就业指南
                <ul class="work drop">
                    <li><a href="nefu/work">就业方向</a></li>
                    <li><a href="nefu/money">薪资待遇</a></li>
                </ul>
            </li>
            <li class="search">
                <input type="text" placeholder="请输入关键词">
                <img src="img/search.png" alt="">
            </li>
        </ul>
        <div class="top-right">
            <a href="nefu/login">切换账号</a>
            <a href="nefu/register">注册</a>
        </div>
        
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