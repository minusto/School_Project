package kosta.mapper;

import java.util.List;

import kosta.model.AdminList;
import kosta.model.Parent;
import kosta.model.ParentList;
import kosta.model.School;
import kosta.model.SchoolAdmin;
import kosta.model.SchoolAdminDetail;
import kosta.model.SchoolAdminRegist;
import kosta.model.StudentList;

public interface Mapper  {
	public int insertSchoolAdmin(SchoolAdmin schoolAdmin); //액터 : 시스템관리자 ==> 학교관리자 등록
	public int insertSchoolAdminRegist(SchoolAdminRegist schoolAdminRegist);
	public int insertParent(Parent parent);
	public List<StudentList> studentList(); //학생목록출력
	public List<AdminList> adminList(); //액터 : 시스템관리자 ==> 학교관리자리스트 출력	
	public List<ParentList> parentList(); ///액터: 교사 => 학부모리스트 출력
	public int insertSchool(School school); //액터 : 교내관리자 => 학교등록
	public SchoolAdminDetail schoolAdminDetail(String id); //액터 : 시스템관리자 =>학교관리자 상세보기
}
