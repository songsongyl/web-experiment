<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>公告管理</title>
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
    <h2>公告管理</h2>
    <a href="nefu/addnotice" class="crud-link add-link">添加公告</a>
    <a href="nefu/deletenotice" class="crud-link delete-link">删除公告</a>
    <a href="nefu/updatenotice" class="crud-link update-link">修改公告</a>
    <a href="nefu/selectnotice" class="crud-link query-link">查询公告</a>
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
        });
    });
</script>
</body>
</html>