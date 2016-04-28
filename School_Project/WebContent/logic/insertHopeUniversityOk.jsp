<%@page import="kosta.model.HopeUniversity"%>
<%@page import="kosta.model.EntranceInfo"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	SchoolService service = SchoolService.getInstance();
	String id = request.getParameter("id");
	
	String universityName = request.getParameter("universityName"); //폼에서 이름 받기
	String majorName = request.getParameter("majorName");
	
	String universityId = service.selectUniversityIdService(universityName); //받은 이름을 이용해 아이디 알아내기
	String majorId = service.selectMajorIdService(majorName);
	
	EntranceInfo entranceInfo = new EntranceInfo(); //그 대학교 학과의 가장 최신 입시요강의 연도를 가져오기 위해서 entranceInfo 객체에 universityId와 majorId를 넣어 service이용
	entranceInfo.setUniversityId(universityId);
	entranceInfo.setMajorId(majorId);
	int entranceYear = service.selectEntranceInfoYearService(entranceInfo);
	
	HopeUniversity hopeUniversity = new HopeUniversity(); //insert를 하기 위해 hopeUniversity 객체에 담아서 service 이용
	hopeUniversity.setMemberId(id);
	hopeUniversity.setMajorId(majorId);
	hopeUniversity.setUniversityId(universityId);
	hopeUniversity.setEntranceYear(entranceYear);
	
	int re = 0;
	re = service.insertHopeUniversityService(hopeUniversity); //희망대학 insert
	if(re > 0) {
		response.sendRedirect("../studentMockTestSimulation.jsp");
	} else {
		out.println("<script type='text/javascript'>alert('희망대학 입력에 실패했습니다');history.go(-1);</script>");
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>​