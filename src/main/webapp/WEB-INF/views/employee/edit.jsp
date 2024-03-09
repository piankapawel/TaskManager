<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pracownicy</title>
</head>
<body>
<hr>
<h1>Edytuj pracownika</h1>
<hr>
<form:form method="post" modelAttribute="employee">

    Imię: <form:input path="firstName"/><br><br>
    Nazwisko: <form:input path="lastName"/><br><br>

    <input type="submit">
</form:form>
<hr>
<c:url value="/employee/list" var="employeeListUrl"/>
<a href="${employeeListUrl}"><h4>Lista pracowników</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>

</body>
</html>
