<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
<%-- <link rel="stylesheet" href="${path}/resources/css/style.css"> --%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.5.16/dist/css/uikit.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
  function delete_ok(id) {
    var a = confirm("정말로 삭제하겠습니까?");
    if (a)
      location.href = 'deleteok/' + id;
  }
</script>


<style>
#editButton {
	width: 80px;
	margin: auto;
	color: white;
	border: 1px #81BEF7;
	background: white;
	padding: 5px 5px;
	text-align: center;
	font-weight: bold;
	display: inline-block;
}

.panel-primary>.panel-heading {
	background-color: darkslategray;
	border-color: white;
}

.panel-primary {
	border-color: black;
}

#deleteButton {
	width: 80px;
	margin: auto;
	border: 1px #E2A9F3;
	background: lightgrey;
	padding: 5px 5px;
	text-align: center;
	font-weight: bold;
	display: inline-block;
}

#buttonArea {
	text-align: center;
	padding: 10px;
}

div.card {
	width: 95%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	text-align: left;
	margin: 14px;
	position: relative;
	float: left;
}

div.header {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	font-size: 40px;
}

div.description {
	padding: 10px;
}

#desc1 {	
	font-size: 20px;
	text-align: left;
	font-weight: 700;
	padding-left: 5%;
}


@media only screen and (min-width: 520px) {
	div.card {
		width: 44%;
	}
}

@media only screen and (min-width: 768px) {
	div.card {
		width: 29%;
	}
}

@media only screen and (min-width: 1024px) {
	div.card {
		width: 22%;
	}
}



</style>

</head>
<body>
	<%@include file="./modules/header.jsp"%>

	<%@include file="./modules/navbar.jsp"%>




	<table id="list" width="90%">
		<c:forEach items="${list}" var="u">

			<div class="card">
				<div class="seq">${u.seq}</div>
				<div class="image">
					<img src=${u.photourl
									}
						style="box-sizing: border-box; width: 100%; height: 230px" />
				</div>
				<div class="description">					
					
					<script>
					var lf = ${u.lost};
					if(lf) document.write ( '<span style="background-color:#CBECBB; padding:1.5px 3px; border-radius: 3px;">Found</span>' );
					else document.write ( '<span style="background-color:#F1CBC2; padding:1.5px 3px; border-radius: 3px;">Lost</span>' );
					</script>
					
					 <span class="title">${u.title}</span>

					<div class="name">상품명 : ${u.category}</div>

					<div class="price">가격 : ${u.writer}</div>

					<div class="other" style="box-sizing: border-box; height: 50px;">비고
						: ${u.content}</div>

					<div class="regdate">작성일자 : ${u.regdate}</div>

					<div id="buttonArea">
						<div id="editButton">
							<a id="fontcolor" href="editform/${u.seq}">Edit</a>
						</div>

						<div id="deleteButton">
							<a id="fontcolor" href="javascript:delete_ok('${u.seq}')">Delete</a>
						</div>

					</div>

				</div>


			</div>
		</c:forEach>
	</table>




	<%-- <div class="container">
		<div class="row">
			<table id="list" width="90%">
				<c:forEach items="${list}" var="u">
					<div class="col-sm-4">
						<div class="panel panel-primary">

							<div class="panel-heading">${u.seq}</div>
							<div class="panel-heading">${u.title}</div>
							<div class="panel-body"
								style="box-sizing: border-box; width: 300px; height: 300px;">
								<img src=${u.photourl
									}
									style="box-sizing: border-box; width: 100%; height: 100%;" />
							</div>
							<div class="panel-footer">상품명 : ${u.category}</div>
							<div class="panel-footer">가격 : ${u.writer}</div>
							<div class="panel-footer"
								style="box-sizing: border-box; height: 100px;">비고 :
								${u.content}</div>
							<div class="panel-footer">${u.regdate}</div>
							<div class="panel-footer">
								<div id="buttonArea">
									<div id="editButton">
										<a id="fontcolor" href="editform/${u.seq}">Edit</a>
									</div>

									<div id="deleteButton">
										<a id="fontcolor" href="javascript:delete_ok('${u.seq}')">Delete</a>
									</div>

								</div>



							</div>
						</div>
					</div>

				</c:forEach>
			</table>


		</div>
	</div>
 --%>
	<br>
	<br>

	<%@include file="./modules/footer.jsp"%>

</body>
</html>