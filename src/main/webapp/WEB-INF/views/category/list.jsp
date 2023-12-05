<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kategorie</title>
</head>
<body>

<h1> Kategorie</h1>

<ul><h3>Lista wszystkich dostępnych kategorii:</h3>
    <c:forEach items="${categories}" var="category">
        <li>
                ${category.name} - ${category.description}
            ---- <c:url value="/category/edit/${category.id}" var="editCategoryURL"/>
            <a href="${editCategoryURL}">EDYTUJ</a>
            ---- <c:url value="/category/delete/${category.id}" var="deleteCategoryURL"/>
            <a href="${deleteCategoryURL}">USUŃ</a>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/category/add" var="addCategoryUrl"/>
<a href="${addCategoryUrl}"><h4>Dodaj kategorię</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>

</body>
</html>
