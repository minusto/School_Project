package kosta.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.Mapper;

public class SchoolDao {
	public static SchoolDao dao = new SchoolDao();

	public static SchoolDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String source = "mybatis-config.xml";
		InputStream input = null;

		try {
			input = Resources.getResourceAsStream(source);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public int insertSchoolAdmin(SchoolAdmin schoolAdmin) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertSchoolAdmin(schoolAdmin);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	public int insertSchoolAdminRegist(SchoolAdminRegist schoolAdminRegist) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertSchoolAdminRegist(schoolAdminRegist);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 학생목록 출력
	public List<StudentList> studentList() {
		SqlSession session = getSqlSessionFactory().openSession();
		List<StudentList> list = null;
		try {
			list = session.getMapper(Mapper.class).studentList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	// 교사가 학부모 정보 입력
	public int insertParent(Parent parent) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertParent(parent);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 액터 : 시스템관리자 ==> 학교관리자리스트 출력
	public List<AdminList> adminList() {
		SqlSession session = getSqlSessionFactory().openSession();
		List<AdminList> list = null;
		try {
			list = session.getMapper(Mapper.class).adminList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	// 액터 : 교사 => 학부모리스트 출력
	public List<ParentList> parentList() {
		SqlSession session = getSqlSessionFactory().openSession();
		List<ParentList> list = null;
		try {
			list = session.getMapper(Mapper.class).parentList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	// 액터 : 교내관리자 => 학교등록
	public int insertSchool(School school) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(Mapper.class).insertSchool(school);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	// 액터 : 시스템관리자 ==> 학교관리자 상세보기
	public SchoolAdminDetail schoolAdminDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		SchoolAdminDetail saDetail = null;
		try {
			saDetail = session.getMapper(Mapper.class).schoolAdminDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return saDetail;
	}

	// 액터 : 교내관리자 ==> 교사등록
	public int insertMember(Member member) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(Mapper.class).insertMember(member);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public int insertTeacher(Teacher teacher) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(Mapper.class).insertTeacher(teacher);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public List<TeacherDetail> listTeacher(String id) {
		List<TeacherDetail> list = null;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		try {
			list = sqlsession.getMapper(Mapper.class).listTeacher(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return list;
	}

	public TeacherDetail detailTeacher(String memberId) {
		TeacherDetail teacher = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			teacher = sqlSession.getMapper(Mapper.class).detailTeacher(memberId);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return teacher;
	}

	// 액터 : 모든사용자 ==> 로그인정보 확인
	public MemberCheck memberCheck(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		MemberCheck mc = null;
		try {
			mc = session.getMapper(Mapper.class).memberCheck(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mc;
	}

	// 액터 : 모든사용자 ==> 유저 세부정보 출력
	public Member memberDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		Member member = null;
		try {
			member = session.getMapper(Mapper.class).memberDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return member;
	}

	// 액터 : 모든사용자 ==> 최초로그인시 비밀번호 변경 (UPDATE)
	public int userModPassowrd(Member member) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).userModPassowrd(member);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;

	}

	// 교사 ==> 학생 입력 및 수정
	public int updateMember(Member member) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).updateMember(member);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 교사 ==> 학생 입력 및 수정
	public int updateStudent(Student student) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).updateStudent(student);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 교사 ==> 학생 정보 NULL LIST
	public List<StudentNullList> studentNullList() {
		SqlSession session = getSqlSessionFactory().openSession();
		List<StudentNullList> list = null;
		try {
			list = session.getMapper(Mapper.class).studentNullList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	// 교사 ==> 학생 세부 열람
	public StudentDetail selectStudentDetail(String m_id) {
		SqlSession session = getSqlSessionFactory().openSession();
		StudentDetail student = null;
		try {
			student = session.getMapper(Mapper.class).selectStudentDetail(m_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return student;
	}

	// 교사 ==> 학생 내용 삭제
	public int deleteStudent(String m_id) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).deleteStudent(m_id);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 교사 ==> 학생 내용 삭제
	public int deleteStudent2(String m_id) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).deleteStudent2(m_id);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}
	
	//교사 ==> 학생 모의고사 점수 입력 - 정보가 입력된 학생 리스트 가져오기
		public List<ExistStudentList> selectExistStudent() {
			SqlSession session = getSqlSessionFactory().openSession();
			List<ExistStudentList> list = null;
			try {
				list = session.getMapper(Mapper.class).selectExistStudent();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return list;
		}
		//교사 => 학생 모의고사 점수 입력 - 탐구 과목 리스트 가져오기
		public List<ResearchSubject> selectResearchSubjectList() {
			SqlSession session = getSqlSessionFactory().openSession();
			List<ResearchSubject> list = null;
			try {
				list = session.getMapper(Mapper.class).selectResearchSubjectList();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return list;
		}
		//교사 => 학생 모의고사 점수 입력 - 제2외국어 과목 리스트 가져오기
		public List<SecondLanguage> selectSecondLanguageSubjectList() {
			SqlSession session = getSqlSessionFactory().openSession();
			List<SecondLanguage> list = null;
			try {
				list = session.getMapper(Mapper.class).selectSecondLanguageSubjectList();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return list;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 모의고사 아이디 가져오기
		public String selectMockID(MockType mockType) {
			SqlSession session = getSqlSessionFactory().openSession();
			String id = null;
			try {
				id = session.getMapper(Mapper.class).selectMockId(mockType);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return id;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 탐구과목 아이디 가져오기
		public String selectResearchId(String researchName) {
			SqlSession session = getSqlSessionFactory().openSession();
			String id = null;
			try {
				id = session.getMapper(Mapper.class).selectResearchId(researchName);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return id;
		}
		//교사 => 학생 모의고사 점수 입력 - 제2외국어 아이디 가져오기
		public String selectSecondLanguageId(String languageName) {
			SqlSession session = getSqlSessionFactory().openSession();
			String id = null;
			try {
				id = session.getMapper(Mapper.class).selectSecondLanguageId(languageName);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return id;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 1학년
		public int insertMockTest1Grade(MockTest mockTest) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(Mapper.class).insertMockTest1Grade(mockTest);
				if(re > 0) {
					session.commit();
				} else {
					session.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return re;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 2학년
		public int insertMockTest2Grade(MockTest mockTest) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(Mapper.class).insertMockTest2Grade(mockTest);
				if(re > 0) {
					session.commit();
				} else {
					session.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return re;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 3학년
		public int insertMockTest3Grade(MockTest mockTest) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(Mapper.class).insertMockTest3Grade(mockTest);
				if(re > 0) {
					session.commit();
				} else {
					session.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return re;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 탐구 점수 넣기
		public int insertResearchScore(ResearchSubjectScore researchScore) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(Mapper.class).insertResearchScore(researchScore);
				if(re > 0) {
					session.commit();
				} else {
					session.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return re;
		}
		//교사 ==> 학생 모의고사 점수 입력 - 제2외국어 점수 넣기 - 2학년, 3학년만
		public int insertSecondLangScore(SecondLanguageScore secondLanguageScore) {
			SqlSession session = getSqlSessionFactory().openSession();
			int re = -1;
			try {
				re = session.getMapper(Mapper.class).insertSecondLangScore(secondLanguageScore);
				if(re > 0) {
					session.commit();
				} else {
					session.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return re;
		}

	// 관리자 ->공지사항 등록
	public int insertNoticeBoard(NoticeBoard noticeBoard) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(Mapper.class).insertNoticeBoard(noticeBoard);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;

	}

	// 공지사항 글번호
	public int noticeBoardNum() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		if (sqlSession.getMapper(Mapper.class).noticeBoardNum() == null) {
			return 0;
		} else {
			return sqlSession.getMapper(Mapper.class).noticeBoardNum();
		}
	}

	// 페이징처리 글갯수 세기
	public int noticeCountBoard(Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(Mapper.class).noticeCountBoard(search);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}
		return re;
	}

	// 공지사항 보드 리스트
	public List<NoticeBoard> noticeBoardList(int startRow, Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<NoticeBoard> list = null;
		try {
			list = sqlSession.getMapper(Mapper.class).noticeBoardList(new RowBounds(startRow, 5), search);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}

		return list;
	}

	// 공지사항조회수
	public int addHitcount(int noticeBoardNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(Mapper.class).addHitcount(noticeBoardNum);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;

	}

	// 공지사항 세부보기

	public NoticeBoard noticeBoardDetail(int noticeBoardNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		NoticeBoard noticeBoard = null;
		try {
			noticeBoard = sqlSession.getMapper(Mapper.class).noticeBoardDetail(noticeBoardNum);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}

		return noticeBoard;
	}

	// 학교정보조회
	public School schoolDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		School school = null;
		try {
			school = session.getMapper(Mapper.class).schoolDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return school;
	}

	// 액터 : 시스템 ==> 학교관리자 테이블 정보조회
	public SchoolAdmin schoolAdminInfoDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		SchoolAdmin schoolAdmin = null;
		try {
			schoolAdmin = session.getMapper(Mapper.class).schoolAdminInfoDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return schoolAdmin;
	}

	// 액터 : 시스템 ==>학부모 테이블 정보조회
	public Parent parentInfoDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		Parent parent = null;
		try {
			parent = session.getMapper(Mapper.class).parentInfoDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return parent;
	}

	// 액터 : 시스템 ==> 시스템관리자 테이블 정보조회
	public SystemAdmin systemAdminInfoDetail(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		SystemAdmin sa = null;
		try {
			sa = session.getMapper(Mapper.class).systemAdminInfoDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return sa;
	}

	// 액터 : 학부모 ==> 최초로그인시 비밀번호 변경
	public int parentModPassword(Parent parent) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).parentModPassword(parent);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 액터 : 학교관리자 ==> 최초로그인시 비밀번호 변경
	public int schoolAdminModPassword(SchoolAdmin schoolAdmin) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).schoolAdminModPassword(schoolAdmin);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 액터 : 학교관리자 ==> 학교등록
	public int insertSchoolRegist(SchoolRegist schoolRegist) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertSchoolRegist(schoolRegist);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 학부모 정보 NULL List
	public List<ParentNullList> parentNullList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<ParentNullList> list = null;
		try {
			list = sqlSession.getMapper(Mapper.class).parentNullList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	// 과목 정보 조회
	public List<Subject> subjectList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Subject> list = null;
		try {
			list = sqlSession.getMapper(Mapper.class).subjectList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	// 학교 정보 조회
	public List<School> schoolList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<School> list = null;
		try {
			list = sqlSession.getMapper(Mapper.class).schoolList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	// 사용자 ID,등급 등록
	public int insertRegistManage(RegistManage registManage) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertRegistManage(registManage);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 사용자 iD등록
	public int insertMemberId(Member member) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertMemberId(member);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 학생아이디 등록+나머지null 등록
	public int insertStudentIdManage(Student student) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertStudentIdManage(student);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	// 학부모 아이디
	public int insertParentId(String parent) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertParentId(parent);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;

	}

	// 유저 리스트
	public List<RegistManage> userList(String id) {
		List<RegistManage> list = null;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		try {
			list = sqlsession.getMapper(Mapper.class).userList(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return list;
	}

	// 교사 등급
	public int insertTeacherGrade(RegistManage registManage) {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = session.getMapper(Mapper.class).insertTeacherGrade(registManage);
			if (re > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}

	public SchoolRegist schoolRegistSchoolId(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		SchoolRegist sr=null;
		try {
			sr = session.getMapper(Mapper.class).schoolRegistSchoolId(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return sr;
	}

	public RegistManage getSchoolAdminId(String id) {
		SqlSession session = getSqlSessionFactory().openSession();
		RegistManage rm=null;
		try {
			rm = session.getMapper(Mapper.class).getSchoolAdminId(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rm;
	}

}