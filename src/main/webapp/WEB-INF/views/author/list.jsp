<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Autorzy</title>
</head>
<body>

<h1>Autorzy</h1>

<ul><h3>Lista wszystkich dostępnych autorów:</h3>
    <c:forEach items="${authors}" var="author">

        <li>
                ${author.firstName} - ${author.lastName}
            ---- <c:url value="/author/edit/${author.id}" var="editAuthorURL"/>
            <a href="${editAuthorURL}">EDYTUJ</a>
            ---- <c:url value="/author/delete/${author.id}" var="deleteAuthorURL"/>
            <a href="${deleteAuthorURL}">USUŃ</a>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/author/add" var="addAuthorUrl"/>
<a href="${addAuthorUrl}"><h4>Dodaj autora</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>

</body>
</html>
