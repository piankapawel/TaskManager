<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kategorie</title>
</head>
<body>

<h1>Usuń kategorię</h1>

<h2 style="color: red"> Czy napewno chcesz usunąć kategorię: ${category.name}?</h2>

<form:form method="post" action="/category/delete/${category.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/category/list">
    <input type="submit" value="Anuluj"/>
</form:form>

<c:url value="/category/list" var="categoryListUrl"/>
<a href="${categoryListUrl}"><h4>Lista kategorii</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
