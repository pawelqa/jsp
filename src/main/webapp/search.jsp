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
    <title>Obsługa Cookie</title>
</head>
<body>
<h2>Obsługa Cookie</h2>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
    out.println("<h2>Found Cookies</h2>");
    for(Cookie cookie: cookies){
        out.print("Name"+ cookie.getName() + ", ");
        out.print("Value"+ cookie.getValue() + "<br/> ");

    }
} else {
    out.print("<h2>No cookies found</h2>");
}
%>

</body>
</html>
