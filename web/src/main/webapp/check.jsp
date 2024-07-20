<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>检查界面</title>
</head>
<body>

<form method="post" action="">

    <%
        String user = (String) session.getAttribute("user");
        String pass = (String) session.getAttribute("pass");
        String user1 = request.getParameter("user");
        session.setAttribute("user1",user1);
        String pass1 = request.getParameter("pass");
        session.setAttribute("pass1",pass1);

        if ("admin".equals(user1) && "admin".equals(pass1)) {
            response.sendRedirect("index");
        }
        else {
            response.sendRedirect("loginfail.jsp");
        }
    %>
</form>
</body>
</html>

