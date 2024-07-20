<%--
  Created by IntelliJ IDEA.
  User: 28692
  Date: 2024/7/20
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="users" scope="request" type="java.util.List<com.entity.User>"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
全部新闻
<ul>

    <c:forEach items="${users }" var="u">
        id<li>${u.id }</li>
        名称<li>${u.name }</li>
        内容<li>${u.content}</li>
        <hr>
    </c:forEach>
</ul>
</body>
</html>
