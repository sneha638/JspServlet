<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <%
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    %>

    <h1>You have been logged out successfully.</h1>
    <p><a href="login.jsp">Click here to log in again</a></p>
</body>
</html>
