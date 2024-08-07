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
        height: 70px;
    }
    header img {
        /*border: 1px solid red;*/
        width: 6%;
        height: 100%;
        /*height: 66.84px;*/
        color:  darkcyan;
        /*display: flex;*/
        /*filter: hue-rotate(120deg);*/
    }
    header .top {
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
    header .search {
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
    @media (max-width: 700px) {
        .top-right  {
            display: none;
        }

    }

    @media (max-width: 880px) {
        .search {
            display: none;
        }

    }
</style>
<header>
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
</header>

