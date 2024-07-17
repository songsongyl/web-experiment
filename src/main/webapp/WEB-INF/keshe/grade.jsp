<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>分数线</title>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .content h2 {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 10px;
        }
        .content table{
            margin-top: 50px;
            width: 100%;
            border-collapse: collapse;
            background-color: #daaf5d;

        }
        .hidden {
            display: none;
        }
        #searchInput {
            width: 200px;
            height: 30px;
            margin-left: 60px;
            border-radius: 10px;
        }
        table th ,table td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid gray;
        }

        tbody tr:nth-child(odd) {
            background-color: pink;
        }
        tbody tr:nth-child(even) {
            background-color: #545491;
        }
        .content p {
            color: #e0a800;
            margin-left: 60px;
            margin-top: 30px;
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
        <h2>分数线</h2>
        <input type="text" id="searchInput" placeholder="搜索专业名称或分数">
        <p>小提示：点击标题即可排序</p>
        <table id="professionalsTable">
            <thead>
            <tr>
                <th onclick="sortTable(0)">专业名称</th>
                <th onclick="sortTable(1)">最低分/最低位次</th>
                <th onclick="sortTable(2)">选科要求</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>生物科学（拔尖人才成栋班）</td>
                <td>601/11044</td>
                <td>物理</td>
            </tr>
            <tr>
                <td>计算机类</td>
                <td>592/13123</td>
                <td>物理</td>
            </tr>
            <tr>
                <td>人工智能</td>
                <td>587/14357</td>
                <td>物理</td>
            </tr>
            <tr>
                <td>机器人工程</td>
                <td>582/15628</td>
                <td>物理</td>
            </tr>
            </tbody>
        </table>

    </div>
    <div class="footer col-md-12">
        <p>&copy; 2024 东北林业大学 All Rights Reserved.</p>
    </div>
</div>
<script>
    function sortTable(n) {
        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        table = document.getElementById("professionalsTable");
        switching = true;
        dir = "asc";
        while (switching) {
            switching = false;
            rows = table.rows;
            for (i = 1; i < (rows.length - 1); i++) {
                shouldSwitch = false;
                x = rows[i].getElementsByTagName("TD")[n];
                y = rows[i + 1].getElementsByTagName("TD")[n];
                if (dir == "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        shouldSwitch = true;
                        break;
                    }
                } else if (dir == "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                        shouldSwitch = true;
                        break;
                    }
                }
            }
            if (shouldSwitch) {
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
                switchcount ++;
            } else {
                if (switchcount == 0 && dir == "asc") {
                    dir = "desc";
                    switching = true;
                }
            }
        }
    }

    // 搜索功能
    function searchTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("professionalsTable");
        tr = table.getElementsByTagName("tr");

        for (i = 1; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td");
            if (td.length > 0) {
                var found = false;
                for (var j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            found = true;
                            break;
                        }
                    }
                }
                if (found) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    // 搜索框输入时触发搜索
    document.getElementById("searchInput").addEventListener("keyup", searchTable);
</script>
</body>
</html>