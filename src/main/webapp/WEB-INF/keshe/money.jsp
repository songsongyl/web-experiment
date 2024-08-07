<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>薪资待遇</title>
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
                <p>软件开发行业的薪资待遇通常较高，尤其是在大城市和知名企业。以下是一些主要职位的薪资信息：</p>
                <ul>
                    <li>前端开发工程师：¥150,000 - ¥250,000/年</li>
                    <li>后端开发工程师：¥160,000 - ¥280,000/年</li>
                    <li>全栈开发工程师：¥180,000 - ¥300,000/年</li>
                    <li>移动应用开发工程师：¥170,000 - ¥290,000/年</li>
                </ul>
            </div>

            <div class="section">
                <h2>数据科学</h2>
                <p>数据科学是一个高薪领域，尤其是对于具有丰富经验和技能的专业人士。以下是一些主要职位的薪资信息：</p>
                <ul>
                    <li>数据分析师：¥180,000 - ¥300,000/年</li>
                    <li>数据科学家：¥200,000 - ¥350,000/年</li>
                    <li>机器学习工程师：¥220,000 - ¥400,000/年</li>
                    <li>大数据工程师：¥190,000 - ¥320,000/年</li>
                </ul>
            </div>

            <div class="section">
                <h2>网络安全</h2>
                <p>网络安全专业人士的需求量不断增加，薪资待遇也相应提高。以下是一些主要职位的薪资信息：</p>
                <ul>
                    <li>网络安全分析师：¥170,000 - ¥280,000/年</li>
                    <li>信息安全工程师：¥180,000 - ¥300,000/年</li>
                    <li>安全顾问：¥200,000 - ¥320,000/年</li>
                    <li>渗透测试工程师：¥190,000 - ¥310,000/年</li>
                </ul>
            </div>

            <div class="section">
                <h2>薪资待遇对比</h2>
                <p>以下表格对比了不同职业的平均薪资和发展前景：</p>
                <table>
                    <thead>
                    <tr>
                        <th>职业</th>
                        <th>平均薪资（年）</th>
                        <th>发展前景</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>前端开发工程师</td>
                        <td>¥200,000</td>
                        <td>高</td>
                    </tr>
                    <tr>
                        <td>数据科学家</td>
                        <td>¥275,000</td>
                        <td>非常高</td>
                    </tr>
                    <tr>
                        <td>网络安全分析师</td>
                        <td>¥230,000</td>
                        <td>高</td>
                    </tr>
                    <tr>
                        <td>机器学习工程师</td>
                        <td>¥310,000</td>
                        <td>非常高</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="section">
                <h2>相关资源</h2>
                <p>以下是一些有用的资源链接，帮助你更好地了解和准备这些职业方向：</p>
                <ul>
                    <li><a href="https://www.glassdoor.com" target="_blank">Glassdoor - 公司评价和薪资信息</a></li>
                    <li><a href="https://www.payscale.com" target="_blank">Payscale - 薪资调查和比较</a></li>
                    <li><a href="https://www.indeed.com" target="_blank">Indeed - 工作搜索和薪资信息</a></li>
                    <li><a href="https://www.linkedin.com" target="_blank">LinkedIn - 职业社交和工作机会</a></li>
                </ul>
            </div>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
</body>
</html>