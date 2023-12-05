<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Artykuły</title>
</head>
<body>

<h1>Dodaj artykuł</h1>

<form:form method="post" modelAttribute="article">

    Tytuł: <form:input path="title"/><br>
    Treść: <form:input path="content"/><br>
    Autor: <form:select path="author.id" items="${authors}"
                        itemLabel="lastName" itemValue="id"/> <br>
    Kategoria: <form:checkboxes path="categories" items="${categories}"
                                itemLabel="name" itemValue="id"/>

    <input type="submit">
</form:form>

<c:url value="/article/list" var="articleListUrl"/>
<a href="${articleListUrl}"><h4>Lista artykułów</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>


</body>
</html>
