<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Zadania</title>
</head>
<body>
<hr>
<h1>Dodaj zadanie</h1>
<hr>
<form:form method="post" modelAttribute="task">

    Branża: <form:input path="title"/><br><br>
    Zadanie: <form:input path="content"/><br><br>
    Pracownik: <form:select path="employee.id" items="${employees}"
                        itemLabel="lastName" itemValue="id"/> <br><br>
    Status: <form:checkboxes path="statuses" items="${statuses}"
                                itemLabel="name" itemValue="id"
                             element="div style='margin-right:10px;'"/><br>

    <input type="submit">
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
