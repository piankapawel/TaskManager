<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Zadanie</title>
</head>
<body>
<hr>
<h1>Usuń zadanie</h1>
<hr>
<h2 style="color: red"> Czy napewno chcesz usunąć zadanie: ${task.title} ?</h2>

<form:form method="post" action="/task/delete/${task.id}">
    <input type="submit" value="Potwierdź"/>
</form:form>

<form:form method="get" action="/task/list">
    <input type="submit" value="Anuluj"/>
</form:form>
<hr>
<c:url value="/task/list" var="taskListUrl"/>
<a href="${taskListUrl}"><h4>Lista zadań</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>

</body>
</html>
