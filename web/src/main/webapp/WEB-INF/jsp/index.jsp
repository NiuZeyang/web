<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="users" scope="request" type="java.util.List<com.entity.User>"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>新闻管理</title>
    <style>
        body{
            margin:0;
            min-height:100vh;
            background-color: #e493d0;
            background-image:
                    radial-gradient(closest-side,rgba(235,105,78,1),rgba(235,105,78,0)),
                    radial-gradient(closest-side,rgba(243,11,164,1),rgba(234,11,164,0)),
                    radial-gradient(closest-side,rgba(254,234,131,1),rgba(254,234,131,0)),
                    radial-gradient(closest-side,rgba(170,142,235,1),rgba(170,142,235,0)),
                    radial-gradient(closest-side,rgba(248,192,147,1),rgba(248,192,147,0));
            background-size:
                    130vmax 130vmax,
                    80vmax 80vmax,
                    90vmax 90vmax,
                    110vmax 110vmax,
                    90vmax 90vmax;
            background-position:
                    -80vmax -80vmax,
                    60vmax -30vmax,
                    10vmax 10vmax,
                    -30vmax -10vmax,
                    50vmax 50vmax;
            background-repeat: no-repeat;
            animation: 5s 背景 linear infinite;
        }
        @keyframes 背景{
            0%,100%{
                background-size:
                        130vmax 130vmax,
                        80vmax 80vmax,
                        90vmax 90vmax,
                        110vmax 110vmax,
                        90vmax 90vmax;
                background-position:
                        -80vmax -80vmax,
                        60vmax -30vmax,
                        10vmax 10vmax,
                        -30vmax -10vmax,
                        50vmax 50vmax;
            }
            25%{
                background-size:
                        100vmax 100vmax,
                        90vmax 90vmax,
                        100vmax 100vmax,
                        90vmax 90vmax,
                        60vmax 60vmax;
                background-position:
                        -60vmax -90vmax,
                        50vmax -40vmax,
                        0vmax -20vmax,
                        -40vmax -20vmax,
                        40vmax 60vmax;
            }
            50%{
                background-size:
                        80vmax 80vmax,
                        110vmax 110vmax,
                        80vmax 80vmax,
                        60vmax 60vmax,
                        80vmax 80vmax;
                background-position:
                        -50vmax -70vmax,
                        40vmax -30vmax,
                        10vmax 0vmax,
                        20vmax 10vmax,
                        30vmax 70vmax;
            }
            75%{
                background-size:
                        90vmax 90vmax,
                        90vmax 90vmax,
                        100vmax 100vmax,
                        90vmax 90vmax,
                        70vmax 70vmax;
                background-position:
                        -50vmax -40vmax,
                        50vmax -30vmax,
                        20vmax 0vmax,
                        -10vmax 10vmax,
                        40vmax 60vmax;
            }
        }
    </style>
</head>
<body class="total">
<h3>Query</h3>
全部新闻
<ul>

    <c:forEach items="${users }" var="u">
        id<li>${u.id }</li>
        名称<li>${u.name }</li>
        内容<li>${u.content}</li>
        <hr>
    </c:forEach>
</ul>
<hr>
<h3>Update</h3>
修改指定新闻
<form action="update" method="post">
    <select name="uid">
        <c:forEach items="${users }" var="u">
            <option value="${u.id }">${u.name }</option>
        </c:forEach>
    </select>
    new name:<input type="text" name="name" required>
    new content:<input type="text" name="content" required>
    <br>
    <button type="submit">提交</button>
</form>
<hr>
<h3>Add</h3>
添加新闻
<form action="insert" method="post">
    name:<input type="text" name="name" required>
    content:<input type="text" name="content" required>
    <br>
    <button type="submit">提交</button>
</form>
<hr>
<h3>Delete</h3>
删除新闻
<form action="delete" method="post">
    id:<input type="text" name="id" required>
    <br>
    <button type="submit">提交</button>
</form>
<hr>
<div id="footer">
    <%@include file="/WEB-INF/jsp/footer.jsp" %>
</div>
</body>
</html>