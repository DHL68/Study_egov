<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>"></script>
</head>

<script type="text/javaScript" language="javascript" defer="defer">
	/* 목록 버튼 클릭시 게시판 조회 페이지 이동 */
	function list() {
		/* JSP 의 url 표기법이 정해져 있으니 확인하면서 작성한다. */
		location.href = "<c:url value='/list.do'/>";
	}
</script>

<body>

	<div class="container">
		<h1>상세화면</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<label for="">안녕하세요</label>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<label class="control-label col-sm-2" for="idx">게시물 아이디:</label>
					<div class="control-label" style="text-align: left">게시물 아이디</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="title">제목:</label>
					<div class="control-label" style="text-align: left">제목</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="writer">등록자/등록일:</label>
					<div class="control-label" style="text-align: left">등록자/등록일</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="title">내용:</label>
					<div class="control-label" style="text-align: left">내용</div>
				</div>
			</div>
			<div class="panel-footer">
				<button type="button" class="btn btn-default">수정</button>
				<button type="button" class="btn btn-default">삭제</button>
				<button type="button" class="btn btn-default" onclick="list();">목록</button>
			</div>
		</div>
		<div class="well well-sm">
			작성자/작성일<br>내용
			<div class="well well-sm">
				<form class="form-horizontal" method="post" action="reply.do">
					<div class="form-group" style="display: flex; align-items: center;">
						<label class="control-label col-sm-2" for="writer"
							style="text-align: left;">작성자/작성일:</label>
						<div class="control-label col-sm-10" style="text-align: left">
							<input type="text" class="form-control" id="writer" name="writer"
								placeholder="등록자를 입력하세요." maxlength="15"
								style="width: 50%; float: left;"> <input type="text"
								class="form-control" id="indate" name="indate"
								placeholder="등록일을 입력하세요." maxlength="10"
								style="width: 50%; float: left;">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="reply"
							style="text-align: left">내용:</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" id="reply" name="reply"
								maxlength="300"></textarea>
						</div>
					</div>
					<div class="form-group" style="text-align: right; margin-right: 5px;">
						<span>글은 수정이나 삭제를 할 수 없습니다.</span>
						<button type="submit" class="btn btn-default">작성</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>