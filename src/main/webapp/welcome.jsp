<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.01.2020
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCounter = 0;%>
<html>
<head>
    <title>Hello World!</title>
</head>
<body>
    <p>Server name: ${pageContext.request.serverName}</p>
    <p>Server port: ${pageContext.request.serverPort}</p>
    <p>Request URI: ${pageContext.request.requestURI}</p>

    <h1>
<%--        <% out.print("Hello world!"); %>--%>
<%--       Dzisiaj jest: <%= java.time.LocalDate.now().toString() %>--%>
        Dzisiaj jest:
    <%
        String nowString = LocalDate.now().toString();
        out.print(nowString);
    %>
    </h1>
    <p>
        Licznik odwiedzin: <%= ++visitCounter%>
    </p>
</body>
</html>
