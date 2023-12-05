<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Autorzy</title>
</head>
<body>

<h1>Edytuj autora</h1>

<form:form method="post" modelAttribute="author">

    Imię: <form:input path="firstName"/><br>
    Nazwisko: <form:input path="lastName"/><br>

    <input type="submit">
</form:form>

<c:url value="/author/list" var="authorListUrl"/>
<a href="${authorListUrl}"><h4>Lista autorów</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
