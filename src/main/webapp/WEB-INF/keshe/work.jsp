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
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
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