package kosta.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class SchoolService {
	public static SchoolDao dao;
	public static SchoolService service=new SchoolService();
	
	public static SchoolService getInstance(){
		dao=SchoolDao.getInstance();
		return service;
	}
	
	//액터 : 시스템관리자 ==> 학교관리자 등록
	public int insertSchoolAdminService(SchoolAdmin schoolAdmin){
		return dao.insertSchoolAdmin(schoolAdmin);
	}
	public int insertSchoolAdminRegistService(SchoolAdminRegist schoolAdminRegist){
		return dao.insertSchoolAdminRegist(schoolAdminRegist);
	}
	
	public List<StudentList> studentListService(){
		return dao.studentList();
	}
	public int insertParentService(Parent parent){
		return dao.insertParent(parent);
	}
	
	//액터 : 시스템관리자 ==> 학교관리자 리스트 출력
	public List<AdminList> adminListService(){
		return dao.adminList();
	}
	public List<ParentList> parentListService(){
		return dao.parentList();
	}
	
	
	//액터 : 교내관리자 ==> 학교등록
	public int insertSchool(HttpServletRequest request){
		School school = new School();
		school.setSchoolId(request.getParameter("schoolId"));
		school.setSchoolName(request.getParameter("schoolName"));
		school.setSchoolAddress(request.getParameter("schoolAddress"));
		school.setSchoolTel(request.getParameter("schoolTel"));
		
		return dao.insertSchool(school);
	}
	
	//액터 : 시스템관리자 ==> 학교관리자 상세보기
	public SchoolAdminDetail schoolAdminDetailService(String id){
		return dao.schoolAdminDetail(id);
	}
	
}
