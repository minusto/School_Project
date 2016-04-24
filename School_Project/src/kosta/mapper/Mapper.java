package kosta.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kosta.model.AdminList;
import kosta.model.Member;
import kosta.model.MemberCheck;
import kosta.model.NoticeBoard;
import kosta.model.Parent;
import kosta.model.ParentList;
import kosta.model.School;
import kosta.model.SchoolAdmin;
import kosta.model.SchoolAdminDetail;
import kosta.model.SchoolAdminRegist;
import kosta.model.Search;
import kosta.model.Student;
import kosta.model.StudentDetail;
import kosta.model.StudentList;
import kosta.model.StudentNullList;
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
	public Member memberDetail(String id); //액터 : 모든사용자 => 유저정보확인
	public int userModPassowrd(Member member); //액터 : 모든사용자 => 비밀번호 변경
	public int updateMember(Member member); //교사 ==> 학생 입력 및 수정
	public int updateStudent(Student student); //교사 ==> 학생 입력 및 수정
	public List<StudentNullList> studentNullList(); //교사 ==> 학생 정보 NULL LIST
	public StudentDetail selectStudentDetail(String m_id); //교사 ==> 학생 세부 열람
	public int deleteStudent(String m_id); //교사 ==> 학생 내용 삭제
	public int deleteStudent2(String m_id); //교사 ==> 학생 내용 삭제
	public int insertNoticeBoard(NoticeBoard noticeBoard); //관지라-> 공지사항 등록
	public Integer noticeBoardNum(); //공지사항 글번호
	public int noticeCountBoard(Search search); //페이징 처리 공지사항글번호
	public List<NoticeBoard> noticeBoardList(RowBounds row, Search search); //공지사항 목록
	public int addHitcount(int noticeBoardNum); //공지사항조회수
	public NoticeBoard noticeBoardDetail(int noticeBoardNum); //공지사항 상세
	public School schoolDetail(); //학교정보조회
}
