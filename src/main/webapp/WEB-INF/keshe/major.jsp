<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>专业简介</title>
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
        .content p {
            display: none;
        }
        .content li {
            padding: 20px;
        }
        .content span {
            /*background-color: #ceb484;*/
            display: inline-block;
            width: 50px;
            height: 25px;

        }
        .toggle-btn {
            margin-top: 5px;
            cursor: pointer;
            background-color: pink;
            outline: none;
            border: none;
            margin-left: 100px;
            padding: 5px;
            margin-bottom: 10px;
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
            <li><span>经济学</span> <button class="toggle-btn">显示更多</button><p>主要研究经济学、金融学、投资学、精算学等方面的基本知识和技能，在银行、证券、信托等金融机构进行经济分析、预测、规划、管理以及各类金融服务。例如：债券、基金的投资前景分析，股票、投资的风险评估，汽车、房子的抵押贷款，企业破产时的资产清算等</p></li>
            <li><span>投资学</span> <button class="toggle-btn">显示更多</button><p>主要研究金融学、经济学、投资学、管理学、法学等方面的基本知识和技能，涉及金融投资、风险投资、国际投资、政府投资、企业投资、投资宏观调控等，进行个人或企业的投资项目的规划、分析与管理等。常见的投资品种有：股票、债券、保险、基金、银行理财产品等</p></li>
            <p><span>禁毒学</span><button class="toggle-btn">显示更多</button> <p>主要研究公安学、侦查学、毒品学、化学等方面的基本知识和技能，了解我国和世界毒品问题的现状、趋势和应对策略，进行缉毒侦查、毒品检验、毒品预防教育、戒毒管理等。常见的毒品有：鸦片、海洛因、冰毒、吗啡、大麻、可卡因等</p></li>
            <li><span>世界史</span><button class="toggle-btn">显示更多</button><p>主要研究马克思主义基本原理、历史学等方面的基本理论和知识，包括世界通史、世界军事史、近现代国际关系史等，了解世界的历史发展和西方国家的历史、文化、制度、经济等，在文化、文博、档案等行业进行世界历史与世界文物方面的科学研究等。该专业毕业生的择业面不是很广，选择需谨慎</p></li>
        </ul>

    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
<script>
    document.querySelectorAll('.toggle-btn').forEach(button => {
        button.addEventListener('click', function() {
            const contentP = this.nextElementSibling;
            contentP.style.display = contentP.style.display === 'block' ? 'none' : 'block';
            this.textContent = contentP.style.display === 'block' ? '收起' : '显示更多';
        })
    })


</script>
</body>
</html>