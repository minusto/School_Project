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
	
	//액터 : 교내관리자 ==> 교사등록
	public int insertMember(Member member){	
		return dao.insertMember(member);
	}
	public int insertTeacher(Teacher teacher){
		return dao.insertTeacher(teacher);
	}
	
	//액터: 교내관리자 ==> 교사목록
	public List<TeacherDetail> listTeacher(){
		return dao.listTeacher();
	}
	
	//액터 : 교내관리자 ==> 교사목록 ==> 상세보기
	public TeacherDetail detailTeacher(int memberId){
		return dao.detailTeacher(memberId);
	}
	
	//액터 : 모든사용자 ==> 로그인정보 확인
	public MemberCheck memberCheckService(String id){
		return dao.memberCheck(id);
	}
	
	//액터 : 모든사용자 ==> 유저 상세정보 출력
	public Member memberDetailService(String id){
		return dao.memberDetail(id);
	}
	
	//액터 : 모든사용자 ==> 최초로그인시 비밀번호 변경 (UPDATE)	
	public int userModPassowrdService(Member member){
		return dao.userModPassowrd(member);
	}
}
