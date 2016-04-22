<%@page import="kosta.model.SchoolService"%>
<%@page import="kosta.model.SchoolAdminDetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("path", "학교관리자> 상세보기");
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	SchoolService service=SchoolService.getInstance();
	SchoolAdminDetail sad=service.schoolAdminDetailService(id);
	request.setAttribute("sad", sad);
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
</head>

<body class="flat-blue">
	<div class="app-container">
		<div class="row content-container">
			<jsp:include page="schoolAdminMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top" id="content">
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">교내관리자상세페이지</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
												
										<div class="col-sm-5">
											<div class="panel panel-default">
												<div class="panel-heading">
													<span class="text-muted">${sad.schoolName }</span>
												</div>
												<div class="panel-body">ID : ${sad.schoolAdminId }</div>
												<div class="panel-body">이름 : ${sad.schoolAdminName }</div>
												<div class="panel-body">전화번호 : ${sad.schoolAdminTel }</div>
												<div class="panel-body">삭제신청여부 : ${sad.deleteRequest }</div>
												<div class="panel-body">등록일 : <fmt:formatDate value="${sad.schoolRegistDate }" pattern="yyyy-MM-dd"/></div>
												<div class="panel-body">만료일 : <fmt:formatDate value="${(sad.schoolEndDate) }" pattern="yyyy-MM-dd"/></div>
												<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalDefault">
                                            		수정하기
                                        		</button>
                                        <!-- Modal -->
                                        <div class="modal fade" id="modalDefault" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">홍 길 동</h4>
                                                    </div>
                                                    <div class="modal-body col-md-8">
                                                        	<div>ID <input type="text" class="form-control" id="inputPassword3" placeholder="Name"> </div>
                                                        	<div>이름 <input type="text" class="form-control" id="inputPassword3" placeholder="Name"> </div>
                                                        	<div>전화번호 <input type="text" class="form-control" id="inputPassword3" placeholder="Tel"> </div>
                                                        	<div>삭제신청여부 <input type="text" class="form-control" id="inputPassword3" placeholder="Tel"> </div>
                                                        	<div>등록일 <input type="text" class="form-control" id="inputPassword3" placeholder="Password"> </div>
                                                        	<div>만료일 <input type="text" class="form-control" id="inputPassword3" placeholder="Password"> </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                    	
                                                    	<img class="img-responsive" alt=""src="http://placehold.it/160x160" />
												<div class='text-right'>
													<small class='text-muted'>Image Title</small>
												</div> <!-- text-right / end -->
											
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                                        <button type="button" class="btn btn-primary">저장하기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
											</div>
										</div>
									</div>
				</div>
			</div>
		</div>
		<!--컨텐츠 끝 -->
		
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<!-- Javascript Libs -->
	<script type="text/javascript" src="lib/js/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="lib/js/Chart.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="lib/js/jquery.matchHeight-min.js"></script>
	<script type="text/javascript" src="lib/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="lib/js/select2.full.min.js"></script>
	<script type="text/javascript" src="lib/js/ace/ace.js"></script>
	<script type="text/javascript" src="lib/js/ace/mode-html.js"></script>
	<script type="text/javascript" src="lib/js/ace/theme-github.js"></script>
	<!-- Javascript -->
	<script type="text/javascript" src="js/app.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>

</html>
​
	