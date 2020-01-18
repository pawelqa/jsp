<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>
    <%
        Object userId = session.getAttribute("userId");
    %>
<p>UserId: <%
    out.print(userId);
%></p>

</body>
</html>
