<%@page import="kosta.model.ListModel"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) { //insert를 하고 온 것이라면 첫번째 페이지가 되어야 할 것이다.
		pageNum = "1"; //이것을 listBoardService에 가져가야 한다.
	}
	int requestPage = Integer.parseInt(pageNum);
	SchoolService service = SchoolService.getInstance();
	ListModel listModel = service.noticeBoardListService(requestPage, request);
	request.setAttribute("listModel", listModel);
%>
<!DOCTYPE html>
<html>

<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<!-- CSS Libs -->
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">
<style type="text/css">
.headings {
	background: rgba(52, 73, 94, 0.94);
	color: white;
}

tbody tr:hover td {
	background: rgba(38, 185, 154, 0.07);
	border-top: 1px solid rgba(38, 185, 154, 0.11);
	border-bottom: 1px solid rgba(38, 185, 154, 0.11);
}

tbody tr.selected {
	background: rgba(38, 185, 154, 0.16);
}

tbody tr.selected td {
	border-top: 1px solid rgba(38, 185, 154, 0.40);
	border-bottom: 1px solid rgba(38, 185, 154, 0.40);
}
</style>
</head>

<body class="flat-blue">
	<div class="row">
		<div class="col-xs-12">
			<div class="card">
				<div class="card-header">
					<div class="card-title">
						<div class="title">공지사항</div>
					</div>
				</div>

				<div class="card-body table-responsive">
					<!-- Table -->
					<table class="table table-striped">
						<thead>
							<tr class="headings">
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="noticeBoard" items="${listModel.list}">
								<tr>
									<td>${noticeBoard.noticeBoardNum}</td>
									<c:set var="grade" value="${grade }" />

									<c:choose>
										<c:when test="${grade eq '학생'}">
											<td><a
												href="studentNoticeBoardDetail.jsp?noticeBoardNum=${noticeBoard.noticeBoardNum}">${noticeBoard.noticeBoardTitle}</a></td>
										</c:when>
										<c:when test="${grade eq '교사'}">
											<td><a
												href="teacherNoticeBoardDetail.jsp?noticeBoardNum=${noticeBoard.noticeBoardNum}">${noticeBoard.noticeBoardTitle}</a></td>
										</c:when>
										<c:when test="${grade eq '학부모'}">
											<td><a
												href="studentNoticeBoardDetail.jsp?noticeBoardNum=${noticeBoard.noticeBoardNum}">${noticeBoard.noticeBoardTitle}</a></td>
										</c:when>
										<c:otherwise>
											<td><a
												href="schoolAdminNoticeBoardDetail.jsp?noticeBoardNum=${noticeBoard.noticeBoardNum}">${noticeBoard.noticeBoardTitle}</a></td>
										</c:otherwise>
									</c:choose>

									<td>${noticeBoard.schoolAdminId}</td>
									<td><fmt:formatDate value="${noticeBoard.noticeBoardDate}"
											pattern="yyyy-MM-dd" /></td>
									<td>${noticeBoard.noticeBoardHitcount}</td>
								</tr>
							</c:forEach>


						</tbody>
					</table>


					<!--페이지 -->
					<c:set var="grade" value="${grade }" />

					<c:choose>
						<c:when test="${grade eq '학생'}">
							<c:if test="${listModel.startPage > 5}">
								<a
									href="studentNoticeBoardList.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
							</c:if>

							<c:forEach var="pageNo" begin="${listModel.startPage}"
								end="${listModel.endPage}">
								<c:if test="${listModel.requestPage == pageNo}">
									<b>
								</c:if>
								<a href="studentNoticeBoardList.jsp?pageNum=${pageNo}">[${pageNo}]</a>
								<c:if test="${listModel.requestPage == pageNo}">
									</b>
								</c:if>
							</c:forEach>

							<c:if test="${listModel.endPage < listModel.totalPageCount}">
								<a
									href="studentNoticeBoardList.jsp?pageNum=${listModel.startPage + 5}">[다음]</a>
							</c:if>

						</c:when>

						<c:when test="${grade eq '교사'}">
							<c:if test="${listModel.startPage > 5}">
								<a
									href="teacherNoticeBoardList.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
							</c:if>

							<c:forEach var="pageNo" begin="${listModel.startPage}"
								end="${listModel.endPage}">
								<c:if test="${listModel.requestPage == pageNo}">
									<b>
								</c:if>
								<a href="teacherNoticeBoardList.jsp?pageNum=${pageNo}">[${pageNo}]</a>
								<c:if test="${listModel.requestPage == pageNo}">
									</b>
								</c:if>
							</c:forEach>

							<c:if test="${listModel.endPage < listModel.totalPageCount}">
								<a
									href="teacherNoticeBoardList.jsp?pageNum=${listModel.startPage + 5}">[다음]</a>
							</c:if>
						</c:when>

						<c:when test="${grade eq '학부모'}">
							<c:if test="${listModel.startPage > 5}">
								<a
									href="parentNoticeBoardList.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
							</c:if>

							<c:forEach var="pageNo" begin="${listModel.startPage}"
								end="${listModel.endPage}">
								<c:if test="${listModel.requestPage == pageNo}">
									<b>
								</c:if>
								<a href="parentNoticeBoardList.jsp?pageNum=${pageNo}">[${pageNo}]</a>
								<c:if test="${listModel.requestPage == pageNo}">
									</b>
								</c:if>
							</c:forEach>

							<c:if test="${listModel.endPage < listModel.totalPageCount}">
								<a
									href="parentNoticeBoardList.jsp?pageNum=${listModel.startPage + 5}">[다음]</a>
							</c:if>
						</c:when>

						<c:otherwise>
							<c:if test="${listModel.startPage > 5}">
								<a
									href="schoolAdminNoticeBoardList.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
							</c:if>

							<c:forEach var="pageNo" begin="${listModel.startPage}"
								end="${listModel.endPage}">
								<c:if test="${listModel.requestPage == pageNo}">
									<b>
								</c:if>
								<a href="schoolAdminNoticeBoardList.jsp?pageNum=${pageNo}">[${pageNo}]</a>
								<c:if test="${listModel.requestPage == pageNo}">
									</b>
								</c:if>
							</c:forEach>

							<c:if test="${listModel.endPage < listModel.totalPageCount}">
								<a
									href="schoolAdminNoticeBoardList.jsp?pageNum=${listModel.startPage + 5}">[다음]</a>
							</c:if>

						</c:otherwise>
					</c:choose>


					<!-- 검색 -->
					<form action="" method="post" class="pull-right">
						<input type="checkbox" id="checkbox-1" name="area"
							value="noticeBoardTitle"> <label> 제목</label> <input
							type="checkbox" id="checkbox-1" name="area" value="schoolAdminId">
						<label> 작성자</label> <input class="btn btn-default" type="text"
							name="searchKey" size="10"> <input type="hidden"
							name="temp" value="temp"> <input class="btn btn-default"
							type="submit" value="검색">
						<button class="btn btn-default"
							onclick="javascript :location.replace()">검색초기화</button>
					</form>

				</div>
			</div>
		</div>
	</div>

</body>

</html>
​
