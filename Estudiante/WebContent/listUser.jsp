<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Show All Users</title>
</head>
<body>
	<table border=1>
	<thead>
		<tr>
			<th>Identificacion Estudiante</th>
			<th>Nombre</th>
			<th>Nota 1</th>
			<th>Nota 2</th>
			<th>Nota 3</th>
			<th>Nota 4</th>
			<th colspan=2>Action</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="user">
		<tr>
			<td><c:out value="${user.id}" /></td>
			<td><c:out value="${user.nombre}" /></td>
			<td><c:out value="${user.n1}" /></td>
			<td><c:out value="${user.n2}" /></td>
			<td><c:out value="${user.n3}" /></td>
			<td><c:out value="${user.n4}" /></td>
			<td><a href="UserController?action=edit&id=<c:out value="${user.id}"/>">Update</a></td>
			<td><a href="UserController?action=delete&id=<c:out value="${user.id}"/>">Delete</a></td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
	<p><a href="UserController?action=insert">Agregar Nuevo Estudiante</a></p>
</body>
</html>