<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Obsługa Cookie</title>
</head>
<body>
<h2>Obsługa Cookie</h2>
<%
    int searchId = 123456;
    Cookie cookie = new Cookie("searchId", String.valueOf(searchId));
    cookie.setMaxAge(60 * 60 * 24);
    response.addCookie(cookie);

    Cookie usernameCookie = new Cookie("username", "MyUserName");
    response.addCookie(usernameCookie);

%>
<a href="search.jsp">search ...</a>
</body>
</html>