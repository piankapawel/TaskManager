<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home Page</title>
</head>
<body>

<h1> Witamy w CMS!</h1>

<ul> <h3>Najnowsze artykuły:</h3>
<c:forEach items="${articles}" var="article">
    <li><p>${article.title} - <b>${article.created}</b> - ${article.content}</p></li>
</c:forEach>
</ul>

<hr>
<c:url value="/category/list" var="categoryListUrl"/>
<a href="${categoryListUrl}"><h2>// Kategorie \\</h2></a>
<c:url value="/author/list" var="authorListUrl"/>
<a href="${authorListUrl}"><h2>// Autorzy \\</h2></a>
<c:url value="/article/list" var="articleListUrl"/>
<a href="${articleListUrl}"><h2>// Artykuły \\</h2></a>
</body>
</html>
