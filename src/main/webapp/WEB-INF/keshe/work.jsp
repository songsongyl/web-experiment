<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>就业指南</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        /* 样式表 */
        * {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /*background-image: url("../../img/lab.png");*/
            /*background-repeat: no-repeat;*/
            /*background-size: cover;*/
        }
        .container {
            max-width: 1423px;
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

        h1, h2, h3 {
            color: #333;
            margin: 20px;
        }
        .section {
            margin-bottom: 40px;
        }
        ul {
            list-style: none;
        }
        .section table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: pink;
        }
        .section table, .section th, .section td {
            border: 1px solid #ddd;
        }
        .section th, .section td {
            padding: 10px;
            text-align: left;
        }
        .section table td:hover {
            background-color: bisque;
        }
        .section ul {
            margin: 20px 0;
            padding-left: 20px;
        }
        .section ul li {
            margin-bottom: 10px;
        }
        .section a {
            color: #007BFF;
            text-decoration: none;
        }
        .section a:hover {
            text-decoration: underline;
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
            <div class="section">
                <h2>软件开发</h2>
                <p>软件开发是一个广泛的领域，涵盖了从应用程序开发到系统软件开发的各个方面。以下是一些主要的就业方向：</p>
                <ul>
                    <li>前端开发工程师</li>
                    <li>后端开发工程师</li>
                    <li>全栈开发工程师</li>
                    <li>移动应用开发工程师</li>
                </ul>

            </div>

            <div class="section">
                <h2>数据科学</h2>
                <p>数据科学是一个跨学科领域，涉及统计学、计算机科学和领域知识。以下是一些主要的就业方向：</p>
                <ul>
                    <li>数据分析师</li>
                    <li>数据科学家</li>
                    <li>机器学习工程师</li>
                    <li>大数据工程师</li>
                </ul>

            </div>

            <div class="section">
                <h2>网络安全</h2>
                <p>网络安全是保护计算机系统和网络免受信息泄露、盗窃或损坏的实践。以下是一些主要的就业方向：</p>
                <ul>
                    <li>网络安全分析师</li>
                    <li>信息安全工程师</li>
                    <li>安全顾问</li>
                    <li>渗透测试工程师</li>
                </ul>

            </div>

            <div class="section">
                <h2>就业方向对比</h2>
                <p>以下表格对比了不同就业方向的平均薪资和发展前景：</p>
                <table>
                    <thead>
                    <tr>
                        <th>就业方向</th>
                        <th>平均薪资（年）</th>
                        <th>发展前景</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>前端开发工程师</td>
                        <td>¥150,000</td>
                        <td>高</td>
                    </tr>
                    <tr>
                        <td>数据科学家</td>
                        <td>¥200,000</td>
                        <td>非常高</td>
                    </tr>
                    <tr>
                        <td>网络安全分析师</td>
                        <td>¥180,000</td>
                        <td>高</td>
                    </tr>
                    <tr>
                        <td>机器学习工程师</td>
                        <td>¥220,000</td>
                        <td>非常高</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="section">
                <h2>相关资源</h2>
                <p>以下是一些有用的资源链接，帮助你更好地了解和准备这些就业方向：</p>
                <ul>
                    <li><a href="https://www.w3schools.com" target="_blank">W3Schools - Web Development Tutorials</a></li>
                    <li><a href="https://www.coursera.org" target="_blank">Coursera - Online Courses</a></li>
                    <li><a href="https://www.kaggle.com" target="_blank">Kaggle - Data Science Competitions</a></li>
                    <li><a href="https://www.cybrary.it" target="_blank">Cybrary - Cyber Security Training</a></li>
                </ul>
            </div>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
</body>
</html>