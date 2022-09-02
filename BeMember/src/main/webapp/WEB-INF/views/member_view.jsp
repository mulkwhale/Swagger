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
<form method=POST name='fm1'>
<table width=650 border=1 cellspacing=0 cellpadding=5 id="contentId">
	<tr>
		<td class="content"><b>번호</b></td>
		<td class="content"><c:out value="${member.getNo()}"/></td>
	</tr>
	<tr>
		<td class="content"><b>아이디</b></td>
		<td class="content"><c:out value="${member.getId()}"/></td>
	</tr>
	<tr>
		<td class="content"><b>이름</b></td>
		<td class="content"><c:out value="${member.getName()}"/></td>
	</tr>
	<tr>
		<td class="content"><b>생년월일</b></td>
		<td class="content"><c:out value="${member.getBirth()}"/></td>
	</tr>
	<tr>
		<td class="content"><b>주소</b></td>
		<td class="content"><c:out value="${member.getAddress()}"/></td>
	</tr>
	<tr>
		<td class="content"><b>전화번호</b></td>
		<td class="content"><c:out value="${member.getPhone()}"/></td>
	</tr>
</table>
<table width=650>
	<tr>
		<td width=600></td>
		<td><input type=button value="목록" OnClick="submitForm1('insert')" class="button button1"></td>
		<td><input type=button value="수정" OnClick="submitForm1('update')" class="button button1"></td>
	</tr>
</table>
</form>
<script language="JavaScript">
function submitForm1(mode) {
	if (mode == "insert") {
		fm1.action = "/member/list";
	} else if (mode == "update") {
		fm1.action = "/member/update?key=${member.getNo()}";
	}
	
	fm1.submit();
}
</script>
<style>
	#contentId {
		width: 100%;
		border-collapse: collapse;
	}
	.content {
		border: 1px solid #ddd;
		padding: 8px;
	}
	#contentId tr:nth-child(even){background-color: #f2f2f2;}

	#contentId tr:hover {background-color: #ddd;}
	
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
</style>
</body>
</html>