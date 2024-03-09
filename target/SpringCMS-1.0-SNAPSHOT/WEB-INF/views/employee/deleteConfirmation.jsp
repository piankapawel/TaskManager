<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pracownicy</title>
</head>
<body>
<hr>
<h1>Usuń pracownika</h1>
<hr>
<h2 style="color: red"> Czy napewno chcesz usunąć pracownika: ${employee.firstName} ${employee.lastName}?</h2>

<form:form method="post" action="/employee/delete/${employee.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/author/list">
    <input type="submit" value="Anuluj"/>
</form:form>
<hr>
<c:url value="/employee/list" var="employeeListUrl"/>
<a href="${employeeListUrl}"><h4>Lista pracowników</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><<h4>Strona główna</h4></a>
<hr>

</body>
</html>
