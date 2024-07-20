<jsp:useBean id="user" scope="request" type="com.entity.User"/>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
id：${user.id } <br>
名称：${user.name } <br>
内容:${user.content} <br>
注册时间：${user.insertTime}
</body>
</html>