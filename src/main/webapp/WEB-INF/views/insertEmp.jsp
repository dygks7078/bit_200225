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
	결과 : ${re }
	<hr>
	<h2>사원등록</h2>
	<hr>
	<a href="listEmp.do">사원목록</a>
	<hr>
	
		<form action="insertEmp.do" method="post">
			사원이름 : <input type="text" name="ename"><br> 
		        사원계급 : <input type="text" name="job"><br> 
		        사원급여 : <input type="number" name="sal"><br> 
		        사원수당 : <input type="number" name="comm"><br> 
		        관리자명 :  
	        	<select name="mgr"> 
	            	<c:forEach var="m" items="${mList }"> 
	                	<option value="${m.eno }">${m.ename }(${m.job}, ${m.dno })</option> 
	            	</c:forEach> 
	        	</select><br> 
	    	소속부서 :  
	        	<select name="dno"> 
            		<c:forEach var="d" items="${dList }"> 
               			 <option value="${d.dno }">${d.dname }(${d.dloc })</option> 
            		</c:forEach> 
       			</select><br> 
        	사원메일 : <input type="email" name="email"><br> 
       		주민번호 : <input type="text" name="jumin"><br> 
       
        <input type="submit" value="등록"> 
        <input type="reset" value="취소"> 
	</form>
</body>
</html>