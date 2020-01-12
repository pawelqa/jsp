<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.01.2020
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<jsp:useBean id="calculator" class="com.sda.services.Calculator"/>
<jsp:setProperty name="calculator" property="n" value="5"/>
<html>
<head>
    <title>Redirected Page</title>
</head>
<body>
    <h1>Redirected page</h1>
<jsp:include page="include/included.jsp"/>
<p>
    Mój parametr to: <%= request.getParameter("myParam")%>
</p>
<p>
    <jsp:getProperty name="calculator" property="n"/>
    <sup>2</sup> wynosi :
    <%
        int result = calculator.square();
        out.print(result);
    %>
</p>
</body>
</html>
