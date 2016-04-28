<%@page import="kosta.model.ImageUtil"%>
<%@page import="java.io.File"%>
<%@page import="kosta.model.Student"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.RegistManage"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="teacherSessionCheck.jsp" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
    MultipartRequest mr =(MultipartRequest)session.getAttribute("request12");

	
	String uploadPath  = request.getRealPath("upload");
	int size = 20*1024*1024; //20mb
	
	Student student = new Student();
	student.setMemberId(mr.getParameter("memberId"));
	student.setStudentCode(mr.getParameter("studentCode"));
	student.setStudentGrade(Integer.parseInt(mr.getParameter("studentGrade"))); 
	student.setStudentClass(Integer.parseInt(mr.getParameter("studentClass")));
	student.setStudentNum(Integer.parseInt(mr.getParameter("studentNum")));
	student.setStudentGender(mr.getParameter("studentGender"));
	student.setStudentMajor(mr.getParameter("studentMajor"));
			
	String studentFileName  = mr.getFilesystemName("studentPicture"); 
	student.setStudentPicture(studentFileName); 
	
	//이미지 리사이즈 코드 
	String imgePath = uploadPath+"\\"+studentFileName;
	File src  = new File(imgePath);
   String headName = studentFileName.substring(0, studentFileName.lastIndexOf("."));
	String pattern =studentFileName.substring(studentFileName.lastIndexOf(".")+1);
	String reImagePath = uploadPath+"\\"+headName+"_resize."+pattern;
	File dest = new File(reImagePath);
	
	ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
	
	
	
    int re2 = service.updateStudentService(student);
	if(re2>0){
	response.sendRedirect("../teacherInsertStudentForm.jsp"); 	
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>