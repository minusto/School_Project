package kosta.mapper;

import java.util.List;

import kosta.model.AdminList;
import kosta.model.Member;
import kosta.model.MemberCheck;
import kosta.model.Parent;
import kosta.model.ParentList;
import kosta.model.School;
import kosta.model.SchoolAdmin;
import kosta.model.SchoolAdminDetail;
import kosta.model.SchoolAdminRegist;
import kosta.model.StudentList;
import kosta.model.Teacher;
import kosta.model.TeacherDetail;

public interface Mapper  {
	public int insertSchoolAdmin(SchoolAdmin schoolAdmin); //액터 : 시스템관리자 ==> 학교관리자 등록
	public int insertSchoolAdminRegist(SchoolAdminRegist schoolAdminRegist);
	public int insertParent(Parent parent);
	public List<StudentList> studentList(); //학생목록출력
	public List<AdminList> adminList(); //액터 : 시스템관리자 ==> 학교관리자리스트 출력	
	public List<ParentList> parentList(); ///액터: 교사 => 학부모리스트 출력
	public int insertSchool(School school); //액터 : 교내관리자 => 학교등록
	public SchoolAdminDetail schoolAdminDetail(String id); //액터 : 시스템관리자 =>학교관리자 상세보기
	public List<TeacherDetail> listTeacher(); // 액터 : 교내관리자 =>교사리스트
	public TeacherDetail detailTeacher(int memberId); // 액터 : 교내관리자 =>교사리스트=>상세보기
	public int insertMember(Member member);// 액터 : 교내관리자 =>교사등록
	public int insertTeacher(Teacher teacher);
	public MemberCheck memberCheck(String id); // 액터 : 모든사용자 => 로그인정보 확인
}
