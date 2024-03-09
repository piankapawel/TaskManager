<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Zadania</title>
</head>
<body>
<hr>
<h1>Zadania</h1>
<hr>
<ul><h3>Lista wszystkich dostępnych zadań:</h3>
    <c:forEach items="${tasks}" var="task">

        <li>
                <b>${task.title}</b>- ${task.content}
            ---- <c:url value="/task/edit/${task.id}" var="editTaskURL"/>
            <a href="${editTaskURL}">EDYTUJ</a>
            ---- <c:url value="/task/delete/${task.id}" var="deleteTaskURL"/>
            <a href="${deleteTaskURL}">USUŃ</a>

            <br>- Pracownik: ${task.employee.firstName} ${task.employee.lastName}
            <br>- Status:
            <c:forEach items="${task.statuses}" var="status">
                ${status.name}
            </c:forEach>
        </li>
        <br>
    </c:forEach>
</ul>
<hr>
<c:url value="/task/add" var="addTaskUrl"/>
<a href="${addTaskUrl}"><h4>Dodaj zadanie</h4></a>

<hr>
<c:url value="/" var="homePageUrl"/>
<a href="${homePageUrl}"><h4>Strona główna</h4></a>
<hr>
</body>
</html>
