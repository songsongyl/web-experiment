<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻管理</title>
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
        a {
            text-decoration: none;
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
        }
        .content {
            padding: 50px;
            text-align: center;
        }
        .content h2 {
            margin: 30px;
        }
        a.crud-link {
            display: inline-block;
            margin: 5px;
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
        }

        a.crud-link:hover {
            background-color: #0056b3;
        }

        /* 可以为不同的操作添加不同的颜色 */
        a.add-link {
            background-color: #28a745;
        }

        a.add-link:hover {
            background-color: #1e7e34;
        }

        a.delete-link {
            background-color: #dc3545;
        }

        a.delete-link:hover {
            background-color: #bd2130;
        }

        a.update-link {
            background-color: #ffc107;
        }

        a.update-link:hover {
            background-color: #e0a800;
        }

        a.query-link {
            background-color: #17a2b8;
        }

        a.query-link:hover {
            background-color: #138496;
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
    <h2>新闻管理</h2>
    <a href="nefu/addnews" class="crud-link add-link">添加新闻</a>
    <a href="nefu/deletenews" class="crud-link delete-link">删除新闻</a>
    <a href="nefu/updatenews" class="crud-link update-link">修改新闻</a>
    <a href="nefu/selectnews" class="crud-link query-link">查询新闻</a>
</div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    document.querySelectorAll('.crud-link').forEach(link => {
        link.addEventListener('click', function(event) {
            // event.preventDefault(); // 阻止默认链接行为
            // let action = this.textContent.trim();
            if (!confirm(`确认要执行操作吗？`)) {
                event.preventDefault(); // 阻止默认链接行为
                return; // 如果用户取消，不执行任何操作
            }
            // 根据操作执行不同的逻辑
            // switch(action) {
            //     case '添加新闻':
            //         window.location.href = 'addnews.jsp'; // 重定向到添加新闻的页面
            //         break;
            //     case '删除新闻':
            //
            //         // 执行删除操作的逻辑
            //         alert('新闻已删除！');
            //         break;
            //     case '修改新闻':
            //         // 执行修改操作的逻辑
            //         alert('新闻已修改！');
            //         break;
            //     case '查询新闻':
            //         // 执行查询操作的逻辑
            //         alert('新闻查询结果展示！');
            //         break;
            // }
        });
    });
</script>
</body>
</html>