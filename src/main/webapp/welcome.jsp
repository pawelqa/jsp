<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Hello World!</title>
</head>
<body>
<h2>Parametry wyszukiwania</h2>
<form action="search.jsp" method="get">
    <label>Szukane słowo: <input type="text" name="query"></label>
    <label>Strona numer: <input type="number" name="page"></label>
    <label>Sortowanie:
        <select name="sort">
            <option value="asc">rosnąco</option>
            <option value="desc">malejąco</option>
        </select>
    </label>
    <input type="submit" value="wyślij"/>
</form>
</body>
</html>