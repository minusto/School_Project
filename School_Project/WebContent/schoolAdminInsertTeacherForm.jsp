<%@page import="kosta.model.Subject"%>
<%@page import="kosta.model.SchoolService"%>
<%@page import="kosta.model.School"%>
<%@page import="java.util.List"%>
<%@include file="logic/schoolAdminSessionCheck.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
	int i = 1;
	int j = 1;
	request.setAttribute("path", "학부모 관리 > 학부모 정보 입력");

	List<School> list = service.schoolListService();
	request.setAttribute("list", list);
	List<Subject> list2 = service.subjectListService();
	request.setAttribute("list2", list2);
%>
<html>
<head>
<title>빈칸</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->

<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'rel='stylesheet' type='text/css'>
<!-- CSS Libs -->

<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<!-- CSS Libs -->   
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="lib/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">
<!-- jQuery-->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
		$(function(){
			$('tbody:eq(0)').on('click','#clickStu',function(){
				$('input[name=schoolId]').val($(this).html());
				$('button[class=close]').trigger('click'); 
			})
			$('tbody:eq(0) #clickStu').on({
				 mouseenter: function(){
				  $(this).css('color','red');
				 },
				 mouseleave: function(){
				  $(this).css('color','#333');
				 }
			});
			$('tbody:eq(1)').on('click','#clickStu',function(){
				$('input[name=subjectId]').val($(this).html());
				$('button[class=close]').trigger('click'); 
			})
			$('tbody:eq(1) #clickStu').on({
				 mouseenter: function(){
				  $(this).css('color','red');
				 },
				 mouseleave: function(){
				  $(this).css('color','#333');
				 }
			});
		})
	</script>
</head>
<body class="flat-blue">
	<div class="app-container">
		<div class="row content-container">
			<jsp:include page="schoolAdminMenu.jsp"/>
<script type="text/javascript">
        </script>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top" id="content">
					<div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">교사등록</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form class="form-horizontal" action="logic/insertTeacherOk.jsp " method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">사용자ID</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberId" placeholder="UserID">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">이름</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberName" placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">생년월일</label>
                                            <div class="col-sm-5">
														<input type='date' class="form-control" name="memberBirthday"placeholder="YYYY-MM-DD"/> 
											</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberTel" placeholder="Tel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">주소</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberAddress" placeholder="Tel">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">이메일</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberEmail" placeholder="aaa@bbb.com">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">비고</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="memberNote" value="없음">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">학교ID</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="schoolId">
                                                <button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary" >
                                            		학교ID 찾기
                                      			</button>
                                      			<!-- Modal -->
                                      			<div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            		<div class="modal-dialog">
                                               			<div class="modal-content">
                                                    		<div class="modal-header">
                                                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        		<h4 class="modal-title" id="myModalLabel">학교ID 리스트</h4>
                                                    		</div>
                                                    		<div class="modal-body">
                                                               	<div class="row" style="width:100%; height:200px; overflow:auto">
																<!-- Table -->
																<div class="col-md-2"></div>
																<div class="col-md-8">
																<table class="table table-striped">
																	<thead>
																		<tr class="headings">
																			<th>번호</th>
																			<th>학교ID</th>
																			<th>학교 이름</th>
																		</tr>
																	</thead>
																	<tbody >
																		<c:forEach var="school" items="${list }">
																		<tr>
																			<td><%=i++ %></td>
																			<td id="clickStu" style="cursor:pointer">${school.schoolId }</td>
																			<td>${school.schoolName }</td>
																		</tr>
																		</c:forEach>
																	</tbody>
																</table>
																</div>
																</div>
                                                    		</div>
                                                 		</div>
                                             		</div>
                                         		</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">담당학급</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="teacherClass" placeholder="TeacherClass">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">담당과목</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="subjectId" placeholder="subjectId">
                                                <button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary2" >
                                            		과목ID 찾기
                                      			</button>
                                      			<!-- Modal -->
                                      			<div class="modal fade modal-primary" id="modalPrimary2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            		<div class="modal-dialog">
                                               			<div class="modal-content">
                                                    		<div class="modal-header">
                                                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        		<h4 class="modal-title" id="myModalLabel">과목ID 리스트</h4>
                                                    		</div>
                                                    		<div class="modal-body">
                                                               	<div class="row" style="width:100%; height:200px; overflow:auto">
																<!-- Table -->
																<div class="col-md-2"></div>
																<div class="col-md-8">
																<table class="table table-striped">
																	<thead>
																		<tr class="headings">
																			<th>번호</th>
																			<th>교과명</th>
																			<th>과목명</th>
																		</tr>
																	</thead>
																	<tbody >
																		<c:forEach var="subject" items="${list2 }">
																		<tr >
																			<td><%=j++ %></td>
																			<td id="clickStu" style="cursor:pointer">${subject.subjectId }</td>
																			<td>${subject.subjectType }</td>
																			<td>${subject.subjectName }</td>
																		</tr>
																		</c:forEach>
																	</tbody>
																</table>
																</div>
																</div>
                                                    		</div>
                                                 		</div>
                                             		</div>
                                         		</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">사진</label>
                                            <div class="col-sm-5">
                                               <input type="file" id="exampleInputFile" name="teacherPicture" >
                                            <p class="help-block">jpg 형식의 파일만 지원합니다.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">직책</label>
                                            <div class="col-sm-5">
                                                <input type="text" class="form-control" name="teacherPosition" placeholder="Position">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">등록</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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

</html>​