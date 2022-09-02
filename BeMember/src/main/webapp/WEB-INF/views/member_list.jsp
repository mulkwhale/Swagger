<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*, javax.sql.*, java.net.*, java.io.*, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form method='post'>
<table cellspacing=1 width=600 border=1>
	<tr id="title">
		<td width=50><p align=center>번호</p></td>
		<td width=500><p align=center>아이디</p></td>
		<td width=100><p align=center>이름</p></td>
		<td width=100><p align=center>생년월일</p></td>
	</tr>
	<c:forEach var="index" begin="0" items="${items}">
		<tr>
			<td width=50><p align=center><c:out value="${index.getNo()}"/></p></td>
			<td width=500><a href='/member/view?key=<c:out value="${index.getNo()}"/>'>
				<c:out value="${index.getId()}"/></a></td>
			<td width=100><p align=center><c:out value="${index.getName()}"/></p></td>
			<td width=100><p align=center><c:out value="${index.getBirth()}"/></p></td>
		</tr>
	</c:forEach>
</table>
		<p align=center><input type=button value="신규" OnClick="location.href='/member'" class="button button1"></p>
		<p align=center><input type=button value="수정" OnClick="location.href='/member/updateAll'" class="button button1"></p>
</form>
<style>
 	#cntPage { 
 		color: green; 
 		font-weight: bold; 
 	} 
	.indexNum { 
 	  background-color: white; 
 	  color: black; 
 	  border: 2px solid orange; 
 	  padding: 10px 20px; 
 	  text-align: center; 
 	  display: inline-block; 
 	} 
	a:hover, a:active {
	  background-color: lightgreen;
	  color: white;
	}
	a {
		text-decoration: none;
	}
	table {
		width: 100%;
		border-collapse: collapse;
	}
	td {
		border: 1px solid #ddd;
		padding: 8px;
	}
	table tr:nth-child(even){background-color: #f2f2f2;}

	table tr:hover {background-color: #ddd;}

	#title {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color: orange;
	  color: white;
	}
	
	.button {
	  background-color: #4CAF50; /* Green */
	  border: none;
	  color: white;
	  padding: 16px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 4px 2px;
	  transition-duration: 0.4s;
	  cursor: pointer;
	}
	.button1 {
	  background-color: white; 
	  color: black; 
	  border: 2px solid #4CAF50;
	}

	.button1:hover {
	  background-color: #4CAF50;
	  color: white;
	}
</style>
</body>
</html>