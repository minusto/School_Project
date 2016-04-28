<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.SchoolService"%>
<%@ include file="schoolAdminSessionCheck.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<%
    request.setCharacterEncoding("utf-8");

	Member member = new Member();

try {
	 String uploadPath  = request.getRealPath("upload");
	 	int size = 20*1024*1024; //20mb
	 	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
	 	session.setAttribute("tRequest", multi);
	 	
	 	member.setSchoolId(multi.getParameter("schoolId"));
		member.setMemberId(multi.getParameter("memberId"));
		member.setMemberAddress(multi.getParameter("memberAddress"));
		member.setMemberName(multi.getParameter("memberName"));
		member.setMemberBirthday(multi.getParameter("memberBirthday"));
		member.setMemberEmail(multi.getParameter("memberEmail"));
		member.setMemberNote(multi.getParameter("memberNote"));
		member.setMemberTel(multi.getParameter("memberTel"));
	} catch (Exception e) {
	e.printStackTrace();
	}
		RegistManage registManage=new RegistManage();
		registManage.setSchoolAdminId(id);
  		registManage.setMemberId(member.getMemberId());
    int re = service.insertMember(member);
    int re3 =service.insertTeacherGradeService(registManage);
    
    if(re >0){
    	response.sendRedirect("insertTeacherOk2.jsp");
    }else{
    	System.out.print("입력실패");
    }
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>​