<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.StudentList"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="logic/teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	request.setAttribute("path", "학생관리 > 학생 정보 열람");
	Member member=service.memberDetailService(id);
	List<StudentList> list = service.studentListService(member.getSchoolId());
	request.setAttribute("list", list);
%>
<html>
<head>
    <title>빈칸</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
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
    	$('tbody').on('click','tr',function(){
    		var memberId = $(this).find('#memberId').html();
    		location.href="teacherListStudentDetail.jsp?m_id="+memberId; 
    	})
    })
	</script>
	<style type="text/css">
   	 tbody tr:hover td {
		background: rgba(38, 185, 154, 0.07);
		border-top: 1px solid rgba(38, 185, 154, 0.11);
		border-bottom: 1px solid rgba(38, 185, 154, 0.11);
		}
    </style>
</head>


<body class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <jsp:include page="teacherMenu.jsp"/>
            <!-- 메인 컨텐츠 -->
           <div class="container-fluid">
				<div class="side-body">
					<div class="row">
						<div class="col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<div class="title">학생 목록</div>
									</div>
								</div>
								<div class="col-lg-1"></div>
								<div class="card-body table-responsive col-lg-10">
									<!-- Table -->
									<table class="table table-striped">
										<thead>
											<tr class="headings">
												<th>사용자ID</th>
												<th>이름</th>
												<th>생년월일</th>
												<th>학교ID</th>
												<th>학번</th>
												<th>학년</th>
												<th>반</th>
												<th>출석번호</th>
												<th>성별</th>
												<th>학과</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${list}">
												<tr>
													<td id="memberId">${list.memberId }</td>
													<td>${list.memberName }</td>
													<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.memberBirthday}"/></td>
													<td>${list.schoolId }</td>
													<td>${list.studentCode }</td>
													<td>${list.studentGrade }</td>
													<td>${list.studentClass }</td>
													<td>${list.studentNum }</td>
													<td>${list.studentGender }</td>
													<td>${list.studentMajor }</td>
												</tr>
											</c:forEach>
										</tbody> 
									</table>
									<!--페이지 -->
									<a href="teacherInsertStudentForm.jsp" class="pull-right" ><button class="btn btn-default">등록</button></a><br><br>
 									<br><br>
									<!-- 검색 -->
									<form action="" method="post" class="pull-right">
										<input type="checkbox" id="checkbox-1"name="area" value="b_title"> 
										<label> 사용자ID</label>
										<input type="checkbox" id="checkbox-1"name="area" value="b_name"> 
										<label>이름</label>
										<input class="btn btn-default" type="text" name="searchKey" size="10"> 
										<input type="hidden" name="temp" value="temp" >
										<input class="btn btn-default" type="submit" value="검색">
								</form><br><br>
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

</html>
​