<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18.01.2020
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wynik wyszukiwania</title>
</head>
<body>
<p>Szukane słowo: <%=request.getParameter("query")%></p>
<p>Strona: <%=request.getParameter("page")%></p>
<p>Sortowanie:
<%--    <%=("desc".equals(request.getParameter("sort")) ? "malejąco" : "rosnąco")%></p>--%>
    <%
        switch (request.getParameter("sort")){
           case "asc":
               out.print("rosnąco");
               break;
           case "desc":
               out.print("malejąco");
               break;
           default:
               out.println("Niezdefiniowane sortowanie");
        };
        %>
</body>
</html>
