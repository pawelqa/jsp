<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.01.2020
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World!</title>
</head>
<body>
    <h1>
        <% out.print("Hello world!"); %>
        Dzisiaj jest: <%= java.time.LocalDate.now().toString() %>
    </h1>
</body>
</html>
