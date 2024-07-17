<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>方向简介</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
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
            border-radius: 10px;
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
        <ul>
            <li><span>哲学</span> 研习中西现代哲学、中西哲学史、伦理学、逻辑学、人类学等方面的基本理论和知识，以世界本原为探究对象，研究自然、社会和人类最普遍的问题，探索人的价值观、人生观和世界观的问题。例如：世界的本质是什么，人类应该怎样活着，人类如何看待死亡等。该专业侧重于学术方面，选择需谨慎</li>
            <li><span>经济学</span> 主要研究金融学、经济学、投资学、管理学、法学等方面的基本知识和技能，涉及金融投资、风险投资、国际投资、政府投资、企业投资、投资宏观调控等，进行个人或企业的投资项目的规划、分析与管理等。常见的投资品种有：股票、债券、保险、基金、银行理财产品等</li>
            <li><span>禁毒学</span> 主要研究公安学、侦查学、毒品学、化学等方面的基本知识和技能，了解我国和世界毒品问题的现状、趋势和应对策略，进行缉毒侦查、毒品检验、毒品预防教育、戒毒管理等。常见的毒品有：鸦片、海洛因、冰毒、吗啡、大麻、可卡因等</li>
        </ul>

    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
</body>
</html>