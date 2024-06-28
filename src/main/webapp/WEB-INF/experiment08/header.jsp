<%@ page pageEncoding="UTF-8" %>
  <style>
    header {
      margin: 10px 0;
    }
    header nav ul {
      display: flex;
      padding: 0;
      list-style: none;
      background-color: palevioletred;
    }
    nav li a {
      display: block;
      color: white;
      padding: 10px;
      text-decoration: none;
      width: 300px;
    }
    nav li a:hover {
      background-color: antiquewhite;
    }
    nav .right {
      margin-left: auto;
    }
  </style>
<header>
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">News</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="#">About</a></li>
      <li class="right"><a href="#">Logout</a></li>
    </ul>
  </nav>
</header>

