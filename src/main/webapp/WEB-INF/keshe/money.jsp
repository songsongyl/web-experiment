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
            /*height: 66.84px;*/
            color:  darkcyan;
            /*display: flex;*/
            /*filter: hue-rotate(120deg);*/
        }
        .header .top {
            list-style: none;
            display: flex;
            align-items: center;
            flex-direction: row;
            /*flex-wrap: wrap;*/
            /*position: absolute;*/
            /*top:12px;*/
            /*left: 100px;*/
        }
        .top li:not(.search){
            padding: 10px;
            /*margin: auto;*/
            color: white;
            font-size: 1.2em;
            margin-top: 10px;
            position: relative;
            white-space: nowrap;
            flex-shrink: 1;
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
            white-space: nowrap;
            min-width: 150px;
        }
        .nav-home a{
            color: white;
            font-size: 1.1em;
        }
        .drop a:hover {
            color: #ffec99;
        }
        li a {
            display: block;
            text-decoration: none;
            font-size: 0.7em;
        }
        /*.dropdown {*/
        /*    position: relative;*/
        /*}*/
        .dropdown:hover .drop{
            display: block;
            color: #f08c00;
        }
        .header .search {
            position: relative;
            z-index: 1;
            width: 100%;
            max-width: 450px;
            /*height: 40px; */
            margin: 20px auto;
            /*padding: 10px;*/
            /*margin: auto;*/
        }

        .search input {
            border-radius: 15px;
            width: 100%;
            height: 30px;
            background-color: white;
            border: 1px solid cornflowerblue;
            outline: none;
            padding: 0 30px 0 15px; /* 留出空间给搜索图标和右边的搜索按钮 */
            /*box-sizing: border-box; !* 边框计算在宽度内 *!*/
        }

        .search input::placeholder {
            font-size: 14px;
            color: #999;
        }

        .searchImg {
            width: 10px;
            height: 15px;
            position: absolute;
            top: 50%;
            right: 10px;
            z-index: 2;
            transform: translateY(-50%); /* 垂直居中 */
        }

        .top-right {
            margin-left: 100px;
            /*margin-top: 15px;*/
            outline: none;
            border: none;
            padding: 5px;
            display: flex;
            justify-content: flex-end; /* 将按钮排列到容器的右侧 */
            align-items: center;
            /*margin-top: 15px;*/
            text-align: center;
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
        @media (max-width: 700px) {
            .top-right  {
                display: none;
            }

        }

        @media (max-width: 840px) {
            .search {
                display: none;
            }

        }
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
        </ul>
        <div class="search">
            <input type="text" placeholder="请输入关键词">
            <img class="searchImg" src="img/search.png" alt="">
        </div>
        <div class="top-right">
            <a href="nefu/login">切换账号</a>
            <a href="nefu/register">注册</a>
        </div>
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