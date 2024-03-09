<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pracownicy</title>
</head>
<body>
<hr>
<h1>Pracownicy</h1>
<hr>
<ul><h3>Lista wszystkich dostępnych pracowników:</h3>
    <c:forEach items="${employees}" var="employee">

        <li>
                ${employee.firstName} - ${employee.lastName}
            ---- <c:url value="/employee/edit/${employee.id}" var="editEmployeeURL"/>
            <a href="${editEmployeeURL}">EDYTUJ</a>
            ---- <c:url value="/employee/delete/${employee.id}" var="deleteEmployeeURL"/>
            <a href="${deleteEmployeeURL}">USUŃ</a>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/employee/add" var="addEmployeeUrl"/>
<a href="${addEmployeeUrl}"><h4>Dodaj pracownika</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>
</body>
</html>
