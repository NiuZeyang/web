<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入界面</title>
    <style type="text/css">
        body{
            background: url("https://static-data.gaokao.cn/upload/school/201906/1559826553_5288_thumb.jpg");
            background-size: 100% 100%;
        }
        input {
            background-color: transparent;
            outline: none;
            color: black;
        }

        body {
            background-color: #8ea4f8;
            background-image: url(https://static-data.gaokao.cn/upload/school/201906/1559826553_5288_thumb.jpg);
            background-repeat: no-repeat;
            background-size: cover; //背景图适应屏幕

        }
        .center {
            width: 400px;
            height: 400px;
            background-color: #fff;
            margin: auto;
            margin-top: 150px;
            border-radius: 5px;
            overflow: hidden;//.title设置margin-top无效，给父元素设置overflow:hidden;
        }
        .title {
            text-align: center;
            font-size: 28px;
            color: #000;
            margin-top: 80px;
            margin-bottom: 10px;
            letter-spacing: 3px;
            font-family: sans-serif;
        }
        .input_box {
            width: 300px;
            height: 30px;
            width: 300px;
            height: 40px;
            padding-left: 10px;
            margin-top: 20px;
            margin-left: 50px;
        }
        .button_box {
            width: 300px;
            height: 35px;
            width: 300px;
            height: 40px;
            margin-top: 20px;
            margin-left: 50px;
            border-radius: 5px;
            background-color: #64a9d9;
            cursor: pointer;
            color: #fff;
        }
        .logo_box {
            position: absolute;
            background-color: #fff;
            width: 100px;
            height: 100px;
            border-radius: 100px;
            top: 100px;
            left: 46%;
            border: solid 5px #A68364;
            text-align: center;
        }
        .logo_img {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="logo_box"><img class="logo_img" src="https://static-data.gaokao.cn/upload/logo/419.jpg"width="60px"></div>
<form method="post" action="check.jsp" class="center">
    <!--<input type="text" name="user"><br>
    <input type="password" name="pass"><br>
    <button type="submit" value="login">登入</button>-->
    <h1 class="title">欢迎登录</h1>
    <input class="input_box" type="text"  name="user"  placeholder="用户名是admin">
    <input class="input_box" type="password"  name="pass"  placeholder="密码是admin">
    <button class="button_box" type="submit" >登入</button>
</form>
</body>
</html>


