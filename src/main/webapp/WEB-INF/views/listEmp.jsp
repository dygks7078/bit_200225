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
	<h2>사원목록</h2>
	<hr>
	<a href="insertEmp.do">사원등록</a>
	<a href="listDept.do">부서목록</a>
	<a href="listEmp.do">사원목록</a>
	<hr>
	
	<table border="1" width="80%">
		<tr>
			<td>사원번호</td>
			<td>사원이름</td>
			<td>사원계급</td>
			<td>사원급여</td>
			<td>사원수당</td>
			<td>관리자넘</td>
			<td>입사일자</td>
			<td>부서번호</td>
		</tr>
		
		<c:forEach var="e" items="${list }">
		<tr>
			<td>${e.eno }</td>
			<td>${e.ename }</td>
			<td>${e.job }</td>
			<td>${e.sal }</td>
			<td>${e.comm }</td>
			<td>${e.mgr }</td>
			<td>${e.hiredate }</td>
			<td>${e.dno }</td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>