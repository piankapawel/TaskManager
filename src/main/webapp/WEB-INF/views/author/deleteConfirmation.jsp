<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Autorzy</title>
</head>
<body>

<h1>Usuń autora</h1>

<h2 style="color: red"> Czy napewno chcesz usunąć autora: ${author.firstName} ${author.lastName}?</h2>

<form:form method="post" action="/author/delete/${author.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/author/list">
    <input type="submit" value="Anuluj"/>
</form:form>

<c:url value="/author/list" var="authorListUrl"/>
<a href="${authorListUrl}"><h4>Lista autorów</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
