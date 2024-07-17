<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>教师详情</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;

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


        .col-md-12 {width: 100%;}

    </style>
</head>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
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