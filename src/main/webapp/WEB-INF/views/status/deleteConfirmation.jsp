<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Status</title>
</head>
<body>
<hr>
<h1>Usuń status</h1>
<hr>
<h2 style="color: red"> Czy napewno chcesz usunąć status: ${status.name}?</h2>

<form:form method="post" action="/status/delete/${status.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/status/list">
    <input type="submit" value="Anuluj"/>
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
