<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*, javax.sql.*, java.net.*, java.io.*, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
</head>
<body>
<form method=post name='fm'>
<table width=650 border=1 cellspacing=0 cellpadding=5 id="contentId">
	<tr>
		<td class="content"><b>번호</b></td>
		<td class="content"><input type=text name=no size=70 maxlength=70 value=<c:out value="${member.getNo()}"/> readonly></td>
	</tr>
	<tr>
		<td class="content"><b>아이디</b></td>
		<td class="content"><input type=text name=id size=70 maxlength=70 value="<c:out value="${member.getId()}"/>" required></td>
	</tr>
	<tr>
		<td class="content"><b>패스워드</b></td>
		<td class="content"><input type=text name=password size=70 maxlength=70 value="<c:out value="${member.getPassword()}"/>" required></td>
	</tr>
	<tr>
		<td class="content"><b>이름</b></td>
		<td class="content"><input type=text name=name size=30 maxlength=30 value="<c:out value="${member.getName()}"/>" required></td>
	</tr>
	<tr>
		<td class="content"><b>생년월일</b></td>
		<td class="content"><input type=text name=birth size=8 maxlength=8 value="<c:out value="${member.getBirth()}"/>" required></td>
	</tr>
	<tr>
		<td class="content"><b>주소</b></td>
		<td class="content"><input type=text name=address size=30 maxlength=30 value="<c:out value="${member.getAddress()}"/>" required></td>
	</tr>
	<tr>
		<td class="content"><b>전화번호</b></td>
		<td class="content"><input type=text name=phone size=11 maxlength=11 value="<c:out value="${member.getPhone()}"/>" required></td>
	</tr>
</table>
<table width=650>
	<tr>
		<td width=600></td>
		<td><input type=button value="취소" OnClick="submitForm('exit')" class="button button1"></td>
		<td><input type=submit value="쓰기" OnClick="submitForm('write')" class="button button1"><input type="hidden" name="_method" /></td>
	</tr>
</table>
</form>
<script language="JavaScript">
const divTest = document.getElementsByName("_method")[0];
function submitForm(mode) {
	if (mode == 'exit') {
		fm.action = "/member/view?key=${member.getNo()}";
		fm.submit();
	} else if (mode == "write") {
		fm.action = "/member/${member.getNo()}";
		divTest.setAttribute("value", "PUT");
	}
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
</style>
</body>
</html>