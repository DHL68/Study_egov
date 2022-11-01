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

<!-- 게시판 등록 페이지 이동 스크립트 -->
<script type="text/javaScript" language="javascript" defer="defer">
	/* 등록 버튼 클릭시 게시판 등록 페이지 이동 */
	function add() {
		/* JSP 의 url 표기법이 정해져 있으니 확인하면서 작성한다. */
		location.href = "<c:url value='/mgmt.do'/>";
	}

	/* 게시글 제목 클릭시 게시글 상세화면 이동 */
	function view() {
		/* JSP 의 url 표기법이 정해져 있으니 확인하면서 작성한다. */
		location.href = "<c:url value='/view.do'/>";
	}

	/* 아이디 선택시 아이디에 해당하는 패스워드 선택 로직 */
	function setPwd(user_id) {
		if (user_id == "admin") {
			$('#password').val('1234');
		} else if (user_id == "guest") {
			$('#password').val('1234');
		} else if (user_id == "guest2") {
			$('#password').val('1234');
		}
	}

	/*  */
	function check() {
		if ($('#user_id').val() == '') {
			alert("아이디를 선택해주세요.");
			return false;
		}
		if ($('#password').val() == '') {
			alert("비밀번호를 선택해주세요.");
			return false;
		}
		return true;
	}
</script>

<!-- 지칭하는 태그 안에 id 와 name 은 꼭 중요하니 같은 변수명을 작성해서 혼동이 없도록 하자 -->

<body>

	<div class="container">
		<h1>메인화면</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<form class="form-inline" method="post" action="<c:url value='/login.do'/>">
					<div class="form-group">
						<label for="user_id">ID : </label> <select class="form-control"
							id="user_id" name="user_id" onchange="setPwd(this.value);">
							<option value="">선택하세요</option>
							<option value="admin">관리자</option>
							<option value="guest">사용자</option>
							<option value="guest2">사용자2</option>
						</select>
					</div>
					<div class="form-group">
						<label for="password">Password : </label> <input type="password"
							class="form-control" id="password" name="password">
					</div>
					<button type="submit" class="btn btn-default"
						onclick="return check();">로그인</button>
				</form>
			</div>
			<div class="panel-body">
				<form class="form-inline" action="/list.do">
					<div class="form-group">
						<label for="searchName">제목(내용) : </label><input type="text"
							class="form-control" id="searchName">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>게시물 번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>등록자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="javascript:view();">1</a></td>
								<td><a href="javascript:view();">제목입니다.</a></td>
								<td>1</td>
								<td>관리자</td>
								<td>2022-11-01</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer">
				<!-- onclick 함수를 추가해서 등록버튼 클릭시 게시판 등록 페이지로 이동으로 설정한다. -->
				<button type="button" class="btn btn-default" onclick="add();">등록</button>
			</div>
		</div>
	</div>

</body>
</html>