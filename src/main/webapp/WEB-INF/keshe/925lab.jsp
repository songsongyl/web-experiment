<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>925实验室</title>
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
    <div class="header" >
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
        <img src="img/lab.jpg" alt="">
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