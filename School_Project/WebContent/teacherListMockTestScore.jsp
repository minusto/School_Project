<%@page import="kosta.model.MockKorAvgScore"%>
<%@page import="kosta.model.MockTest"%>
<%@page import="kosta.model.ResearchSubject"%>
<%@page import="kosta.model.ResearchSubjectScore"%>
<%@page import="kosta.model.MockScoreDetailList"%>
<%@page import="kosta.model.MockResearchScoreDetailList"%>
<%@page import="kosta.model.MockType"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.StudentDetail"%>
<%@page import="kosta.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="logic/teacherSessionCheck.jsp" %>
<%
	request.setAttribute("path", "성적조회 > 모의고사성적조회");
	String studentId=request.getParameter("studentId");
 	String mockId=request.getParameter("mockId");
	if(mockId!=null){
		request.setAttribute("mockId", mockId);
	} 
	
	StudentDetail studentDetail=service.selectStudentDetailService(studentId);
	List<MockType> mockList=service.studentMockTestListService(studentId);

	request.setAttribute("studentDetail",studentDetail);
	request.setAttribute("mockList", mockList);
	request.setAttribute("studentId", studentId);
	
	List<MockTest> selectMyKorScoreList = service.selectMyKorScoreService(studentId);
	List<MockKorAvgScore> selectMockKorAvgScoreList =service.selectMockKorAvgScoreService(studentId);
	
	request.setAttribute("selectMockKorAvgScoreList", selectMockKorAvgScoreList);
	request.setAttribute("selectMyKorScoreList", selectMyKorScoreList);
	
	if(mockId!=null){
		
	List<ResearchSubject> researchSubjectList=service.selectResearchSubjectListService();
	request.setAttribute("researchSubjectList", researchSubjectList);

	List<MockResearchScoreDetailList> researchScoreList=service.studentMockResearchSocreListService(mockId); 
	// 해당 모의고사를 치룬 학생의  탐구과목 정보(점수)를 가져온다 ==> 모의고사 ID를 파라미터로 보내 받아온 결과를 학생 ID와 비교
	List<MockScoreDetailList> mockScoreDetailList=service.studentMockScorePlusSecondLangListService(studentId);
	// 학생이 치룬 모의고사의 탐구과목을 제외한 나머지 과목의 정보를 가져온다 ==> 멤버 ID를 파라미터로 보내 받아온 결과를 모의고사 ID와 비교
	List<ResearchSubjectScore> koreaHistroyScoreList=service.koreaHistroyScoreListService(studentId);
	// 한국사 시험을 치룬 학생의 점수 LIST ==> 멤버 ID를 파라미터로 보내 받아온 결과를 모의고사 ID와 비교 파라미터 = memberId
	request.setAttribute("researchScoreList", researchScoreList);
	request.setAttribute("mockScoreDetailList", mockScoreDetailList);
	request.setAttribute("koreaHistroyScoreList", koreaHistroyScoreList);
	}

	
	int i = 0;
	int j = 0;
%>
<!DOCTYPE html>
<html>

<head>
<title>모의고사 점수확인 페이지</title>
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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$("#selectMock").change(function(){
		var mockId=$(this).val();
		var studentId=$("#studentId").attr('value');
		location.href="teacherListMockTestScore.jsp?studentId="+studentId+"&mockId="+mockId;

		})
	})
</script>
</head>

<body class="flat-blue">
   <div class="app-container">
        <div class="row content-container">
            <jsp:include page="teacherMenu.jsp"/>
			<!-- 메인 컨텐츠 -->
			<div class="container-fluid">
				<div class="side-body padding-top">
					<jsp:include page="listMockTestScore.jsp"/>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
​
