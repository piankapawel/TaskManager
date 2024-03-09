<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Status</title>
</head>
<body>
<hr>
<h1>Dodaj status</h1>
<hr>
<form:form method="post" modelAttribute="status">

    Rodzaj statusu: <form:input path="name"/><br><br>
    Opis: <form:input path="description"/><br><br>

    <input type="submit">
</form:form>
<hr>
<c:url value="/status/list" var="statusListUrl"/>
<a href="${statusListUrl}"><h4>Lista statusów</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>

</body>
</html>
