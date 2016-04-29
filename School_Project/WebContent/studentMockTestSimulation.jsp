<%@page import="java.util.Map"%>
<%@page import="kosta.model.Cutline"%>
<%@page import="kosta.model.EntranceInfo"%>
<%@page import="kosta.model.Major"%>
<%@page import="kosta.model.University"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.HopeUniversity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="logic/studentSessionCheck.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setAttribute("path", "진학시뮬레이션 > 정시시뮬레이션");
	request.setCharacterEncoding("UTF-8");
	
	String selectUniversityName = request.getParameter("selectUniversityName"); //희망대학이 입력되어있지 않을 경우 대학을 선택했을 때의 대학 이름
	
	if(selectUniversityName != null) { //희망대학 미입력상태일 경우 선택한 대학에 맞는 학과 리스트를 가져온다.
		List<Major> majorList = service.selectMajorListService(selectUniversityName);
		request.setAttribute("majorList", majorList);
		request.setAttribute("selectUniversityName", selectUniversityName);
	}
	
	int checkHopeUniversityExist = 0; //희망대학이 설정되어있는지 체크할 변수
	if(id != null && grade.equals("학생")) {
		checkHopeUniversityExist = service.checkHopeUniversityService(id); //학생일 경우 id로 희망대학 유무 체크
		if(checkHopeUniversityExist > 0) {
			HopeUniversity hopeUniversity = service.selectHopeUniversityService(id);
			String universityName = service.selectUniversityNameService(hopeUniversity.getUniversityId());
			String majorName = service.selectMajorNameService(hopeUniversity.getMajorId());
			
			//희망대학 정시커트라인
			Cutline cutline = new Cutline();
			cutline.setMajorId(hopeUniversity.getMajorId());
			cutline.setUniversityId(hopeUniversity.getUniversityId());
			EntranceInfo info = service.mockTestCutlineService(cutline);
			
			request.setAttribute("info", info);
			request.setAttribute("universityName", universityName);
			request.setAttribute("majorName", majorName);
		} else {
			//희망대학을 입력해야 할 경우
			List<University> universityList = service.selectUniversityListService(); //대학교 리스트를 가져옴
			request.setAttribute("universityList", universityList);
			
			request.setAttribute("id", id);					
		}
	} else if(id != null && grade.equals("학부모")) {
		Parent parent2 = service.parentInfoDetailService(id); //부모일 경우 부모 객체를 먼저 가져옴
		checkHopeUniversityExist = service.checkHopeUniversityService(parent2.getMemberId()); //부모객체에 있는 자녀의 memberId로 희망대학의 유무 체크. 있다면 양수		
		if(checkHopeUniversityExist > 0) {
		}
	}
	request.setAttribute("grade", grade); //html에서 학생과 학생이 아닌 경우를 나눠 choose를 사용하기 위해 등급을 set을 해줌
	request.setAttribute("checkHopeUniversityExist", checkHopeUniversityExist); //희망대학 유무 결과 set
	
	//세션으로 id값을 받아오고 전체모의고사합 객체를가져옴
	HttpSession httpSession = request.getSession();
	List<Map<String, Object>> mockTestSumList = service.mockTestSum(httpSession);
	request.setAttribute("mockTestSumList", mockTestSumList);
%>
<!DOCTYPE html>
<html>

<head>
    <title>정시 시뮬레이션</title>
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
	<link rel="stylesheet" type="text/css" href="css/ghi.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function() {
			$(document).on('change', '#selectUniversity', function() { //희망대학 입력 - 대학교 선택했을 경우 대학교 이름을 가지고 새로고침
				var uniName = $(this).val();
				location.href = "studentMockTestSimulation.jsp?selectUniversityName="+uniName;
			});
		});
		
	</script>
</head>

<body class="flat-blue">
   <div class="app-container">
        <div class="row content-container">
            <jsp:include page="studentMenu.jsp"/>
<!--			메인 컨텐츠 -->
            <div class="container-fluid">
                <div class="side-body padding-top">
					<div id="compareToHopUniversityTotalExam" class="row">
	                    <div class="table-responsive col-md-8 col-md-offset-2">
                    	<h3>목표대학과의 비교</h3>
	                    	<c:choose>
                    			<c:when test="${ grade == '학생' }">
                    				<c:choose>
                    					<c:when test="${checkHopeUniversityExist > 0}">
                    						<table id="hopeUniversityTable" class="table table-bordered">
	                    						<tr>
					                    			<th>모의고사 총합</th>
					                    			<th>목표대학</th>
					                    			<th>목표학과</th>
					                    			<th>정시 커트라인</th>
					                    			<th>점수 차이</th>
					                    		</tr>
					                    		<tr>
					                    			<td>${mockTestSumList[0].TOTAL}</td>
					                    			<td><a id="hopeUniversityName" href="universityEntranceInfo.jsp">${universityName }</a></td><!-- 목표대학 목표학과의 상세 페이지를 보여준다. -->
					                    			<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">${majorName }</a></td>
					                    			<td>${info.mockTestCutline}</td>
					                    			<fmt:formatNumber var="finalTotal" value="${mockTestSumList[0].TOTAL - info.mockTestCutline}" pattern="#.00" />
					                    			<td>${finalTotal}</td>
					                    		</tr>
	                    					</table>
                    					</c:when>
                    					<c:otherwise>
                    						<form action="logic/insertHopeUniversityOk.jsp?id=${id}" method="post">
                    							<h4>희망대학 설정하기</h4>
	                    						대학교 : <select id="selectUniversity" name="universityName">
	                    							<optgroup label="선택한 대학">
		                    							<option>${selectUniversityName }</option>
	                    							</optgroup>
	                    							<optgroup label="대학리스트">
		                    							<c:forEach var="universityList" items="${universityList }">
			                    							<option>${universityList.universityName }</option>
		                    							</c:forEach>
	                    							</optgroup>
	                    						</select>&nbsp;&nbsp;
	                    						학과 : <select id="selectMajor" name="majorName">
	                    							<c:forEach var="majorList" items="${majorList }">
	                    								<option>${majorList.majorName }</option>
	                    							</c:forEach>
	                    						</select>
	                    						&nbsp;&nbsp;
	                    						<input type="submit" value="등록" class="flat-blue btn btn-primary"/>                						
                    						</form>
                    					</c:otherwise>
                    				</c:choose>
                    			</c:when>
	                    		<c:otherwise>
		                    		<c:choose>
		                    			<c:when test="${checkHopeUniversityExist > 0}">
		                    				<table id="hopeUniversityTable" class="table table-bordered">
		                    					<tr>
					                    			<th>현재 모의고사 평균 등급</th>
					                    			<th>목표대학</th>
					                    			<th>목표학과</th>
					                    			<th>정시 커트라인</th>
					                    			<th>점수 차이</th>
					                    		</tr>
					                    		<tr>
					                    			<td>2.4</td>
					                    			<td><a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a></td><!-- 목표대학 목표학과의 상세 페이지를 보여준다. -->
					                    			<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
					                    			<td>1.6</td>
					                    			<td>0.8</td>
					                    		</tr>
	                    					</table>
		                   				</c:when>
		                   				<c:otherwise>
		                   					<table id="hopeUniversityTable" class="table table-bordered">
				                    			<tr><th colspan="4">학생이 아님</th></tr>
				                    			<tr><td colspan="4">희망대학이 설정되어있지 않습니다</td></tr>
			                    			</table>	                    						
		                   				</c:otherwise>
	                   				</c:choose>
	                    		</c:otherwise>
	                    	</c:choose>
                			<br><br>
	                    </div>
                    </div>
                    
                    <div id="recommendContainer" class="row">
                    	<div class="col-md-8 col-md-offset-2">
                    		<h3>추천 대학</h3>
                    		<div id="recommendUniversityDiv">
                    			<ul class="list-unstyled list-inline">
                    				<li id="firstRecommend"><a href="universityEntranceInfo.jsp">
                    					<img id="SeoulUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
                    					<span id="firstRecommendUniversityName" class="recommendUniversityName">서울대학교</span>
                    					<span id="firstRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    				<li id="secondRecommend"><a href="#">
                    					<img id="YonseiUniversityMark" alt="연세대학교마크" src="img/YonseiUniversityMark.jpg">
                    					<span id="secondRecommendUniversityName" class="recommendUniversityName">연세대학교</span>
                    					<span id="secondRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    				<li id="thirdRecommend"><a href="#">
                    					<img id="KoreaUniversityMark" alt="고려대학교마크" src="img/KoreaUniversityMark.jpg">
                    					<span id="thirdRecommendUniversityName" class="recommendUniversityName">고려대학교</span>
                    					<span id="thirdRecommendMajorName" class="recommendMajorName">국어국문학과</span>
                    				</a></li>
                    			</ul>
                    		</div>
                    	</div>
                    </div>
                    
					<div class="row">
                    	<div class="col-md-8 col-md-offset-2">
                    		<h3>대학 검색</h3>
                    		<div>
                    			<div id="searchUniversity" class="checkbox-round">
                    				<form id="searchUniversityForm" action="studentTotalExamSimulation.jsp" method="post">
                    					<input type="checkbox" id="selectUniversityName" name="area">
                    						<label id="la" for="selectUniversityName">학교이름</label>
                    					<input type="checkbox" id="selectUniversityMajor" name="area">
                    						<label id="la" for="selectUniversityMajor">학과이름</label>
                    					<input type="text" name="searchKey" id="searchKey" size="20"/>
                    					<input type="submit" value="검색" id="submitButton"/>
                    				</form>	
                    			</div>
                    			<div id="searchUniversityResult" class="row">
	                    			<div class="table-responsive col-md-12">
	                    				<table id="searchResultTable" class="table table-bordered table-striped">
	                    					<tr>
	                    						<th>학교 이름</th>
	                    						<th>학과 이름</th>
	                    						<th>정시 커트라인</th>
	                    						<th>모집인원</th>
	                    					</tr>
	                    					<!-- 검색된리스트가 들어갈 부분 -->
	                    					<tr>
	                    						<td>
	                    							<img class="tableUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
	                    							<a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a>
	                    						</td>
	                    						<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
	                    						<td>1.6</td>
	                    						<td>15</td>
	                    					</tr>
	                    					<tr>
	                    						<td>
	                    							<img class="tableUniversityMark" alt="서울대학교마크" src="img/SeoulUniversityMark.jpg">
	                    							<a id="hopeUniversityName" href="universityEntranceInfo.jsp">서울대학교</a>
	                    						</td>
	                    						<td><a id="hopeUniversityMajor" href="universityEntranceInfo.jsp">국어국문학과</a></td>
	                    						<td>1.6</td>
	                    						<td>15</td>
	                    					</tr>
	                    					<!-- 여기까지 -->
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
​​