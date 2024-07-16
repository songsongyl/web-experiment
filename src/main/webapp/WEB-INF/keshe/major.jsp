<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        * {
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
            margin: 60px;
        }
        .content ul {
            list-style: none;
            padding: 10px;
            padding: 10px;
            /*display: flex;*/
        }
        .content li {
            padding: 20px;
        }
        .content span {
            background-color: #ceb484;
            display: inline-block;
            width: 50px;
            height: 25px;

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
        <ul>
            <li><span>经济学</span> 主要研究经济学、金融学、投资学、精算学等方面的基本知识和技能，在银行、证券、信托等金融机构进行经济分析、预测、规划、管理以及各类金融服务。例如：债券、基金的投资前景分析，股票、投资的风险评估，汽车、房子的抵押贷款，企业破产时的资产清算等</li>
            <li><span>投资学</span> 主要研究金融学、经济学、投资学、管理学、法学等方面的基本知识和技能，涉及金融投资、风险投资、国际投资、政府投资、企业投资、投资宏观调控等，进行个人或企业的投资项目的规划、分析与管理等。常见的投资品种有：股票、债券、保险、基金、银行理财产品等</li>
            <li><span>禁毒学</span> 主要研究公安学、侦查学、毒品学、化学等方面的基本知识和技能，了解我国和世界毒品问题的现状、趋势和应对策略，进行缉毒侦查、毒品检验、毒品预防教育、戒毒管理等。常见的毒品有：鸦片、海洛因、冰毒、吗啡、大麻、可卡因等</li>
            <li><span>世界史</span>主要研究马克思主义基本原理、历史学等方面的基本理论和知识，包括世界通史、世界军事史、近现代国际关系史等，了解世界的历史发展和西方国家的历史、文化、制度、经济等，在文化、文博、档案等行业进行世界历史与世界文物方面的科学研究等。该专业毕业生的择业面不是很广，选择需谨慎</li>
        </ul>

    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
</body>
</html>