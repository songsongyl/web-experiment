<%@ page pageEncoding="UTF-8" %>
<style>

    header {
        /*border: 1px solid red;*/
        width: 100%;
        background-color: darkcyan;
        /*overflow: hidden;*/
        position: relative;
        z-index: 1;
        display: flex;
    }
    header img {
        /*border: 1px solid red;*/
        width: 6%;
        height: 66.84px;
        color:  darkcyan;
        /*display: flex;*/
        /*filter: hue-rotate(120deg);*/
    }
    header .top {
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
    }
    .dropdown:hover .drop{
        display: block;
        color: #f08c00;
    }
    header .search {
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
        margin-left: 100px;
    }
    .top-right input{
        width: 50px;
        height: 30px;
        border-radius: 10px;
        background-color: palevioletred;
        margin-top: 15px;
        /*outline: none;*/
        border: none;
        padding: 5px;
        margin-right: 10px;
    }
    .top-right input.toggle_account{
        width: 70px;
    }
</style>
<header>
    <img src="img/04.jpg" title="校徽" alt="未成功加载">
    <%--        啊啊啊啊，改了好久，最终幡然醒悟，应该加个部署路径--%>
    <ul class="top">
        <li class="nav-major dropdown">专业介绍
            <ul class="major drop">
                <li><a href="">专业简介</a></li>
                <li><a href="">方向简介</a></li>
                <li><a href="">分数线</a></li>
            </ul>
        </li>
        <li class="nav-lab  dropdown">实验室介绍
            <ul class="lab drop">
                <li><a href="html/lab/921lab.html">921实验室</a></li>
                <li><a href="html/lab/923lab.html">923创新实验室</a></li>
                <li><a href="html/lab/925lab.html">925移动开发实验室</a></li>
            </ul>
        </li>
        <li class="nav-teacher  dropdown">教师队伍
            <ul class="teacher drop">
                <li><a href="html/teacher/prolist.html">教授</a></li>
                <li><a href="html/teacher/assProList.html">副教授</a></li>
                <li><a href="teacher/lecturerlist.html">讲师</a></li>
            </ul>
        </li>
        <li class="nav-work  dropdown">就业指南
            <ul class="work drop">
                <li><a href="">就业方向</a></li>
                <li><a href="">薪资待遇</a></li>
                <li><a href="">面试指导</a></li>
            </ul>
        </li>
        <li class="search">
            <input type="text" placeholder="请输入关键词">
            <img src="img/search.png" alt="">
        </li>
    </ul>
    <div class="top-right">
        <a href="nefu/login"> <input type="button" class="toggle_account" value="切换账号"></a>
        <a href="nefu/register"> <input type="button" value="注册"></a>
    </div>

</header>