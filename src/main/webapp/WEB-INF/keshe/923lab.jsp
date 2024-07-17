<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>923实验室</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
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
        .img {
            width: 100px;
            margin-left: 30px;
            margin-top: 10px;
        }
        a {
            text-decoration: none;
            display: block;
            color: #111111;
        }
        .nav {
            background-color: #184b4b;
            color: white;
            /*text-align: center;*/
            padding: 10px ;
            display: flex;
            list-style: none;
        }
        li {
            margin: auto;
        }
        .nav a {
            color: white;
            text-decoration: none;
            padding: 0 10px;
            display: block;

        }
        .nav a:hover {
            background-color: darkcyan;
        }

        #about img {
            width: 100%;
            height: 400px;
            display: none;
        }

        h2 {
            margin: 10px;

        }
        p{
            text-indent: 2em;
            /*display: inline-block;*/
        }
        h1 {
            text-align: center;
            margin: auto;
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
    <div id="header">
        <%@include file="/WEB-INF/keshe/header.jsp"%>
    </div>
    <ul class=" nav">
        <li><a href="#about">关于我们</a></li>
        <li> <a href="#research">研究领域</a></li>
        <li> <a href="#team">团队成员</a></li>
        <li> <a href="#contact">联系方式</a></li>
    </ul>

    <div id="about" >
        <h2>关于我们</h2>
        <p>我们的实验室专注于前沿科学技术的研究和创新，致力于推动科学进步和社会发展。</p>
        <button class=" button img">点击显示图片</button>
        <img src="img/lab2.jpg" alt="">
    </div>

    <div id="research ">
        <h2>研究领域</h2>
        <p>我们的研究涵盖人工智能、机器学习、生物技术、环境科学等多个领域，旨在解决世界面临的重大挑战。</p>
    </div>
    <div id="team ">
        <h2>团队成员</h2>
        <p class="col-md-12">我们的团队由一群充满激情和创造力的科学家、工程师和研究人员组成，他们在各自的领域取得了丰硕的成果。</p>
        <img class="col-md-2" src="img/pro2.png" alt="">
        <img class="col-md-2" src="img/pro.png" alt="">
        <img class="col-md-2" src="img/pro2.png" alt="">
    </div>

    <div id="contact">
        <h2>邮箱：info@example.com</h2>
    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    // 将scrollToSection函数定义在全局作用域中
    function scrollToSection(sectionId) {
        const section = document.getElementById(sectionId);
        if (section) {
            section.scrollIntoView({ behavior: 'smooth' });
        }
    }

    $(function() {
        let amount = 0;
        $(".img").click(function() {
            if (amount === 0) {
                $("#about img").fadeIn(500);
                amount = 1;
            } else {
                $("#about img").fadeOut(500);
                amount = 0;
            }
        });

        // 为导航链接添加点击事件监听器
        $('.nav li a').each(function() {
            $(this).on('click', function(event) {
                event.preventDefault(); // 阻止链接的默认行为（即页面跳转）
                const sectionId = $(this).attr('href').substring(1); // 移除href中的#
                scrollToSection(sectionId);
            });
        });
    });
</script>>
</body>
</html>