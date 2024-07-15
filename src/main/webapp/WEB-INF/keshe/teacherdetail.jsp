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
        .drop a:hover {
            color: #ffec99;
        }
        li a {
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
            /*outline: none;*/
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
        .content img {
            width: 300px;
            height: 330px;
            border-radius: 50%;
            opacity: 1;
            background-size: contain;
            margin: 20px;
        }

        .content {
            text-indent: 2em;
            margin-top: 50px;
            padding: 15px;
            display: flex;
        }

        a {
            text-decoration: none;
            /*color: #282727;*/
            display: block;
        }
        .footer {
            background-color: darkcyan;
            color: white;
            text-align: center;
            padding: 2px 0;
            position: fixed;
            bottom: 0;
        }


        .col-md-1 {width: 8.33%;}
        .col-md-2 {width: 16.67%;}
        .col-md-3 {width: 25%;}
        .col-md-4 {width: 33.33%;}
        .col-md-5 {width: 41.67%;}
        .col-md-6 {width: 50%;}
        .col-md-7 {width: 58.33%;}
        .col-md-8 {width: 66.67%;}
        .col-md-9 {width: 75%;}
        .col-md-10 {width: 83.33%;}
        .col-md-11 {width: 91.67%;}
        .col-md-12 {width: 100%;}
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <img src="img/04.jpg" title="校徽" alt="未成功加载">
        <ul class="top">
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
            <a href="nefu/register"> 注册</a>
        </div>

    </div>
    <div class="content">
        <img src="img/pro2.png" alt="">
        <br>
        <h3>${teacher.name}</h3>
        <p>东北林业大学教学名师，森林持续经营与环境微生物工程黑龙江省重点实验室主任，中国林学会森林工程分会理事长，中国林学会林业机械分会副理事长，
            国家中文核心期刊《森林工程》主编。近5年来，主持完成了国家林业公益行业专项1项，主持国家林业局推广项目1项，主持国家十三五重点研发子课题1项，
            参加了十二五科技支撑课题3项，黑龙江省攻关和基金课题4项，黑龙江省应用技术重大项目1项，哈尔滨市基金1项。出版学术专著4部。山地退化森林生态系统恢复优化模式及配套技术2012年获黑龙江省科技进步三等奖，
            低质林结构与功能优化调控技术2013年获黑龙江省科技进步二等奖，小兴安岭森林分类经营技术研究与示范2016年获黑龙江省科技进步三等奖；
            大小兴安岭森林分类经营技术集成与示范2021获梁希科学技术奖二等奖。“21世纪初森林工程本科专业人才培养模式及实验教学的研究”2009年获黑龙江省优秀教学成果一等奖；
            “面向一流学科的森林工程创新型复合人才培养体系研究与实践”2018年获黑龙江省优秀教学成果一等奖；获国家专利10余项；国内外发表学术论文200余篇。</p>
    </div>
<%--    <button class="root"><a href="nefu">返回首页</a></button>--%>
<%--    <br>--%>
<%--    <button class="pre"><a href="prolist.html">返回上一级</a></button>--%>

        <div class="footer col-md-12">
            <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
        </div>
</div>
</body>
</html>