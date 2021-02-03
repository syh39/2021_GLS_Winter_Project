<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성하기</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>

	<h1>새 물품 등록하기</h1>
	<form action="addok" method="post">
		<table id="list">
			<tr>
				<td id="definition">상품명</td>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<td id="definition">제목</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td id="definition">사진 URL</td>
				<td><input type="text" name="photourl" /></td>
			</tr>
			<tr>
				<td id="definition">가격</td>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<td id="definition">내용</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			
		</table>
		<br/>
		<button type="button" id="cancelButton" onclick="history.back()">목록보기</button>
		<button type="submit" id="registerButton">등록하기</button>
	</form>

</body>
</html>
