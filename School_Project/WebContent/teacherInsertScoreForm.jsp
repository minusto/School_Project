<%@page import="kosta.model.CreateTable"%>
<%@page import="kosta.model.StudentList"%>
<%@page import="kosta.model.Subject"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="logic/teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	request.setAttribute("path", "학생 관리 > 내신 성적 입력");
	String s_type = request.getParameter("s_type");
	String s_grade = request.getParameter("s_grade");
	String s_name = request.getParameter("s_name");
	
	List<Subject> list = service.subjectListService();
	if(s_type != null){
		request.setAttribute("s_type", s_type);
	}
	if(s_grade != null){
		request.setAttribute("s_grade", s_grade);
	}
	if(s_name != null){
		Subject subject = service.selectSubjectService(s_name);
		request.setAttribute("subject", subject);
	}
	request.setAttribute("list", list);
	
	int i = 1;
	Member member=service.memberDetailService(id);
	List<StudentList> list2 = service.studentListService(member.getSchoolId());
	request.setAttribute("list2", list2);
	
	int j=1;
	List<CreateTable> list3 = service.CreateTableListService();
	request.setAttribute("list3", list3);
	int listSize = list3.size();
	request.setAttribute("listSize", listSize);
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
    <!-- CSS -->
    <style type="text/css">
    	.jbFixed {
        position: fixed;
        top: 70px;
      }
    </style>
    <!-- jQuery-->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/createTable.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function(){
   	 $('#selectSubjectType').change(function(){
   			var subjectType = $(this).val();
   			var subjectGrade = $('input:radio[name="subjectGrade"]:checked').val();
   			location.href = "teacherInsertScoreForm.jsp?s_type="+ subjectType+"&s_grade="+subjectGrade;
   			
   		})
   		$('#selectSubjectName').change(function(){
   			//$('input[name=subjectName]').val($(this).val());
   			var subjectType = $('#selectSubjectType option:selected').val();
   			var subjectGrade = $('input:radio[name="subjectGrade"]:checked').val();
   			var subjectName = $(this).val();
   			location.href = "teacherInsertScoreForm.jsp?s_type="+ subjectType+"&s_grade="+subjectGrade+"&s_name="+subjectName;
   		})
   		if($('input[name="subjectType"]').val()!=''){
   		$('input:radio[name="subjectGrade"]:input[value="${subject.subjectGrade}"]').attr("checked", true);
   		}else{
   			$('input:radio[name="subjectGrade"]:input[value="${s_grade}"]').attr("checked", true);
   		}
   		
        $('tbody:eq(1)').on('click','tr',function(){
       		$(this).css('background-color','#d2d2d2');
           	$('input[name=memberId]').val($(this).find('#clickStu').html());
           	$('tbody:eq(1)').find('tr').not($(this)).css('background-color','white');
        })
        var jbOffset = $( '#jbMenu' ).offset();
            $( window ).scroll( function() {
              if ( $( document ).scrollTop() > jbOffset.top ) {
                $( '#jbMenu' ).addClass( 'jbFixed' );
              }
              else {
                $( '#jbMenu' ).removeClass( 'jbFixed' );
              }
         	})
    	})
    	/* $('#formId').submit(function(){
    		$('#rowAdd').trigger('click'); 
    	}) */
    	
    </script>
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
										<div class="title">내신 성적 입력</div>
									</div>
								</div>
								<div class="card-body table-responsive col-xs-9">
									<form class="form-horizontal" id="formId" action="logic/createTableOk.jsp" method="post">
									<div class="form-group">
                                    	<div class="col-sm-4">
                                            <div class="form-inline" style="padding:10px">
                                            	<label for="exampleInputName2">학년 &nbsp;&nbsp;</label>
                                            	<div class="radio3 radio-check radio-inline">
                                            		<input type="radio" id="radio4" name="subjectGrade" value="1">
                                            		<label for="radio4">1학년</label>
                                          		</div>
                                          		<div class="radio3 radio-check radio-inline">
                                            		<input type="radio" id="radio5" name="subjectGrade" value="2">
                                            		<label for="radio5">2학년</label>
                                          		</div>
                                          		<div class="radio3 radio-check radio-inline">
                                            		<input type="radio" id="radio6" name="subjectGrade" value="3">
                                            		<label for="radio6">3학년</label>
                                          		</div>
                                        	</div>
                                        </div>
                                    	<div class="col-sm-3">
                                           	<div class="form-inline" style="padding:10px">
                                           		<label for="exampleInputName2">교과명 &nbsp;&nbsp;</label>
                                            	<select id="selectSubjectType">
														<optgroup label="선택">
															<option>${s_type }</option>
															<option>국어</option>
															<option>수학</option>
															<option>영어</option>
															<option>사회</option>
															<option>과학</option>
															<option>도덕</option>
															<option>체육</option>
															<option>음악</option>
															<option>미술</option>
															<option>기술.가정</option>
															<option>제2외국어</option>
															<option>한문</option>
														</optgroup>
													</select>
                                            </div>
                                        </div>
                                    	<div class="col-sm-2">
                                           	<div class="form-inline" style="padding:10px">
                                           		<label for="exampleInputName2">과목명 &nbsp;&nbsp;</label>
                                            	<select id="selectSubjectName">
														<optgroup label="선택">
														<option>${subject.subjectName }</option>
														<c:forEach var="list" items="${list }">
															<c:if test="${list.subjectType == s_type }">
																<option>${list.subjectName }</option>
															</c:if>
														</c:forEach>
														</optgroup>
													</select>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                        	<input type="hidden" name="subjectType" value="${subject.subjectType}" >
                                        	<input type="hidden" name="subjectName" value="${subject.subjectName}" >
                                        	<input type="hidden" name="subjectUnit" value="${subject.subjectUnit}" >
                                        	<input type="hidden" name="subjectId" value="${subject.subjectId}" >
                                        	<input type="submit" class="btn btn-default" value="행추가">
                                        	<input type="button" class="btn btn-default" id="rowAdd" value="입력테이블">
                                        </div>
                                    </div>
                                    </form>
                                    <div class="hiddenDiv" style="display:none">
                                    <c:forEach var="list" items="${list3 }">
                                    	<input type="text" id="num<%=j %>" value="${list.num }">
                                    	<input type="text" id="subjectGrade<%=j %>" value="${list.subjectGrade }">
                                    	<input type="text" id="subjectType<%=j %>" value="${list.subjectType }">	
                                    	<input type="text" id="subjectName<%=j %>" value="${list.subjectName }">	
                                    	<input type="text" id="subjectUnit<%=j %>" value="${list.subjectUnit }">	
                                    	<input type="text" id="subjectId<%=j++ %>" value="${list.subjectId }">		
                                    </c:forEach>
                                    	<input type="text" id="listSize" value="${listSize }">
                                    listSize
                                    </div>
									<!-- Table -->
									<form action="logic/subjectScoreOk.jsp" method="post">
									<table class="table table-striped" >
										<thead>
											<tr class="headings">
												<th rowspan="2">학년</th>
												<th rowspan="2">교과</th>
												<th rowspan="2">과목</th>
												<th id="b" colspan="4">
													<select id="selectTerm">
														<optgroup label="학기">
															<option value="1">1학기</option>
															<option value="2">2학기</option>
														</optgroup>
													</select>
												</th>
												<th rowspan="2">비고</th>
											</tr>
											<tr>
												<th>단위수</th>
												<th>중간고사</th>
												<th>기말고사</th>
												<th>수행평가</th>
											</tr>
										</thead>
										 <tbody>
											 <!--<tr>
                                    1학년시작
                                       <td rowspan="8"><input type="hidden" name="subjectGrade" value="1학년"> 1학년</td>
                                       <td>국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub01">국어</td>
                                       <td>4</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                       
                                    </tr>
                                    <tr>
                                       <td>도덕</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub36">도덕</td>
                                       <td>1</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>사회</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub20">국사</td>
                                       <td>2</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>사회</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub19">사회</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>과학</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub27">과학</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>수학</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub07">수학</td>
                                       <td>4</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>기술가정</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub47">기술가정</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub14">영어</td>
                                       <td>4</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    2학년 시작
                                    <tr>
                                       <td rowspan="10"><input type="hidden" name="subjectGrade" value="2학년">2학년</td>
                                       <td>국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub04">문학</td>
                                       <td>5</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub51">일본어 1</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>한문</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub53">한문</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>수학</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub08">수학 1</td>
                                       <td>4</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub15">영어 1</td>
                                       <td>6</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub16">영어독해와 작문</td>
                                       <td></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>도덕</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub37">윤리와 사상</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>기술가정</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub48">정보사회와 컴퓨터</td>
                                       <td>2</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>사회</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub21">한국근현대사</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>과학</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub30">화학1</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    3학년 시작
                                    <tr>
                                       <td rowspan="6"><input type="hidden" name="subjectGrade" value="3학년">3학년</td>
                                       <td>국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub05">독서</td>
                                       <td>5</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub06">문법</td>
                                       <td>2</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub17">영어 2</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>수학</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub10">미적분과 통계 기본</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>외국어</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub18">심화영어독해와 작문</td>
                                       <td>3</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>
                                    <tr>
                                       <td>도덕</td>
                                       <td><input type="hidden" name ="arrSubjectId" value="sub38">전통윤리</td>
                                       <td>2</td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name="arrMidExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrFinalExam"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1" name ="arrPerformanceEvaluation"></td>
                                       <td><input type="text" class="form-control" id="inputPassword3" size="1"></td>
                                    </tr>--> 
										</tbody> 
									</table>
									<!--페이지 -->
									<div class="col-md-11"></div>
									<div	class="col-md-1">
										<input type="hidden" name="memberId">
										<input type="submit" class="btn btn-default" value="등록">
									</div>
									</form>
							</div>
							
							<div class="card-body table-responsive col-xs-3">
								<div id="jbMenu" style="width:320px; height:400px; overflow:auto;" >
								<h4>학생 명단</h4>
                            	<table class="table table-hover"  style="border: 1px solid #bcbcbc" >
               						<thead>
										<tr class="headings">
											<th>번호</th>
											<th>학생ID</th>
											<th>이름</th>
											<th>생년월일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="student" items="${list2 }">
											<tr id="clickTr">
												<td><%=i++ %></td>
												<td id="clickStu" style="cursor:pointer">${student.memberId }</td>
												<td>${student.memberName }</td>
												<td><fmt:formatDate value="${student.memberBirthday }" pattern="yyyy-MM-dd"/></td>
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