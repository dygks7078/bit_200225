<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>${title }</h2>
	<hr>
	<a href="listDept.do">부서목록</a>
	<a href="listEmp.do">사원목록</a>
	<hr>
	
	<table border="1" width="80%">
		<tr>
			<td>부서번호</td>
			<td>부서이름</td>
			<td>부서위치</td>
		</tr>
		
		<c:forEach var="d" items="${list}">
			<tr>
				<td>${d.dno}</td>
				<td>${d.dname}</td>
				<td>${d.dloc}</td>
			</tr>			
		</c:forEach>
	</table>
</body>
</html>