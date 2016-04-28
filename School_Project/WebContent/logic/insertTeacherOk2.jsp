<%@page import="kosta.model.ImageUtil"%>
<%@page import="java.io.File"%>
<%@page import="kosta.model.Teacher"%>
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
	MultipartRequest multi =(MultipartRequest)session.getAttribute("tRequest");
	
	String uploadPath  = request.getRealPath("upload");
	int size = 20*1024*1024; //20mb
	Teacher teacher = new Teacher();
	teacher.setMemberId(multi.getParameter("memberId"));
	teacher.setTeacherClass(Integer.parseInt(multi.getParameter("teacherClass")) );
	teacher.setTeacherPosition(multi.getParameter("teacherPosition"));
	teacher.setSubjectId(multi.getParameter("subjectId"));
	String teacherFileName  = multi.getFilesystemName("teacherPicture"); 
	teacher.setTeacherPicture(teacherFileName);
	
	//이미지 리사이즈 코드 
	String imgePath = uploadPath+"\\"+teacherFileName;
	File src  = new File(imgePath);
   String headName = teacherFileName.substring(0, teacherFileName.lastIndexOf("."));
	String pattern =teacherFileName.substring(teacherFileName.lastIndexOf(".")+1);
	String reImagePath = uploadPath+"\\"+headName+"_resize."+pattern;
	File dest = new File(reImagePath);
	
	ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);

    int re = service.insertTeacher(teacher);

    if(re >0){
    	response.sendRedirect("../schoolAdminInsertTeacherForm.jsp");
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