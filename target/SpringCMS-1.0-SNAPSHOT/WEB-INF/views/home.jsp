<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Task Manager</title>
</head>
<body>
<hr>
<ul><h1>Task Manager</h1></ul>
<hr>
<ul> <h3>Najnowsze zadania:</h3>
<c:forEach items="${tasks}" var="task">
    <li><p><b>${task.employee.firstName} ${task.employee.lastName}</b> - Branża: ${task.title} ------------------ Data utworzenia: <b>${task.created}</b> ------------------ ${task.content}</p></li>
</c:forEach>
</ul>

<hr>
<ul><c:url value="/task/list" var="taskListUrl"/>
<a href="${taskListUrl}"><h4>Zadania</h4></a></ul>
<hr>
<ul><c:url value="/employee/list" var="employeeListUrl"/>
<a href="${employeeListUrl}"><h4>Pracownicy</h4></a></ul>
<hr>
<ul><c:url value="/status/list" var="statusListUrl"/>
<a href="${statusListUrl}"><h4>Status</h4></a></ul>
<hr>
</body>
</html>
