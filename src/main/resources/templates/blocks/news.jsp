<jsp:useBean id="newsList" scope="request" type=""/>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Лицей: Новости</title>
</head>
<body class="b">

<table border="1">
    <tr>
        <th>name</th>
        <th>age</th>
    </tr>
    <tr th:each = "user: ${newsList}">
        <td th:text="${user.id}">vasile</td>
        <td th:text="${user.header}">45</td>
        <td th:text="${user.body}">45</td>
    </tr>
</table>

</body>
</html>