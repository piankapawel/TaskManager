<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kategorie</title>
</head>
<body>

<h1>Edytuj kategorię</h1>

<form:form method="post" modelAttribute="category">

    Nazwa: <form:input path="name"/><br>
    Opis: <form:input path="description"/><br>

    <input type="submit">
</form:form>

<c:url value="/category/list" var="categoryListUrl"/>
<a href="${categoryListUrl}"><h4>Lista kategorii</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
