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

        .col-md-12 {width: 100%;}

    </style>
</head>
<body>
<div id="header">
    <%@include file="/WEB-INF/keshe/header.jsp"%>
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