<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Artykuły</title>
</head>
<body>

<h1>Usuń artykuł</h1>

<h2 style="color: red"> Czy napewno chcesz usunąć artykuł: ${article.title} ?</h2>

<form:form method="post" action="/article/delete/${article.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/article/list">
    <input type="submit" value="Anuluj"/>
</form:form>

<c:url value="/article/list" var="articleListUrl"/>
<a href="${articleListUrl}"><h4>Lista artykułów</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
