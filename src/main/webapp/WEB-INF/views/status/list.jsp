<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Status</title>
</head>
<body>
<hr>
<h1>Statusy</h1>
<hr>
<ul><h3>Lista wszystkich dostępnych statusów:</h3>
    <c:forEach items="${statuses}" var="status">
        <li>
                ${status.name} - ${status.description}
            ---- <c:url value="/status/edit/${status.id}" var="editStatusURL"/>
            <a href="${editStatusURL}">EDYTUJ</a>
            ---- <c:url value="/status/delete/${status.id}" var="deleteStatusURL"/>
            <a href="${deleteStatusURL}">USUŃ</a>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/status/add" var="addStatusUrl"/>
<a href="${addStatusUrl}"><h4>Dodaj status</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>
</body>
</html>
