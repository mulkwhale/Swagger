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
<form method=POST name='fm'>
<table width=650 border=1 cellspacing=0 cellpadding=5 id="contentId">
	<tr>
		<td class="content"><b>번호</b></td>
		<td class="content">신규(insert)<input type=hidden name=no value='INSERT'></td>
	</tr>
	<tr>
		<td class="content"><b>아이디</b></td>
		<td class="content"><input type=text name=id size=70 maxlength=70 required></td>
	</tr>
	<tr>
		<td class="content"><b>패스워드</b></td>
		<td class="content"><input type=password name=password size=70 maxlength=70 required></td>
	</tr>
	<tr>
		<td class="content"><b>이름</b></td>
		<td class="content"><input type=text name=name size=30 maxlength=30 required></td>
	</tr>
	<tr>
		<td class="content"><b>생년월일</b></td>
		<td class="content"><input type=text name=birth size=8 maxlength=8 required></td>
	</tr>
	<tr>
		<td class="content"><b>주소</b></td>
		<td class="content"><input type=text name=address size=30 maxlength=30 required></td>
	</tr>
	<tr>
		<td class="content"><b>전화번호</b></td>
		<td class="content"><input type=text name=phone size=11 maxlength=11 required></td>
	</tr>
</table>
<table width=650>
	<tr>
		<td width=600></td>
		<td><input type=button value="취소" OnClick="submitForm('exit')" class="button button1"></td>
		<td><input type=submit value="쓰기" OnClick="submitForm('write')" class="button button1"></td>
	</tr>
</table>
</form>
<script language="JavaScript">
function submitForm(mode) {
	if (mode == 'write') {
		fm.action = "/member/write";
		fm.submit();
	} else if (mode == 'exit') {
		fm.action = "/member/list";
		fm.submit();
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