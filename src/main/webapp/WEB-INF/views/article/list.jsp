<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Artykuły</title>
</head>
<body>

<h1>Artykuły</h1>

<ul><h3>Lista wszystkich dostępnych artykułów:</h3>
    <c:forEach items="${articles}" var="article">

        <li>
                ${article.title} - ${article.content}
            ---- <c:url value="/article/edit/${article.id}" var="editArticleURL"/>
            <a href="${editArticleURL}">EDYTUJ</a>
            ---- <c:url value="/article/delete/${article.id}" var="deleteArticleURL"/>
            <a href="${deleteArticleURL}">USUŃ</a>

            <br>- Autor: ${article.author.firstName} ${article.author.lastName}
            <br>- Kategorie:
            <c:forEach items="${article.categories}" var="category">
                ${category.name}
            </c:forEach>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/article/add" var="addArticleUrl"/>
<a href="${addArticleUrl}"><h4>Dodaj artykuł</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h2>// Strona Główna \\</h2></a>

</body>
</html>
