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
<p>UserId: <% out.print(userId);%></p>
<p>Id: <%=session.getId()%></p>
<p>Creation time: <%=new Date(session.getCreationTime())%></p>
<p>Last access time: <%=new Date(session.getLastAccessedTime())%></p>

</body>
</html>
