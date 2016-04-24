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

	//학생목록 출력
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

	//교사가 학부모 정보 입력
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

	//액터 : 시스템관리자 ==> 학교관리자리스트 출력
	public List<AdminList> adminList(){
		SqlSession session=getSqlSessionFactory().openSession();
		List<AdminList> list=null;
		try {
			list=session.getMapper(Mapper.class).adminList();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}

	//액터 : 교사 => 학부모리스트 출력
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
	//액터 : 교내관리자 => 학교등록
	public int insertSchool(School school){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(Mapper.class).insertSchool(school);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}
	
	// 액터 : 시스템관리자 ==> 학교관리자 상세보기
	public SchoolAdminDetail schoolAdminDetail(String id){
		SqlSession session=getSqlSessionFactory().openSession();
		SchoolAdminDetail saDetail=null;
		try {
			saDetail=session.getMapper(Mapper.class).schoolAdminDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return saDetail;
	}
	//액터 : 교내관리자 ==> 교사등록
	public int insertMember(Member member){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(Mapper.class).insertMember(member);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}
	public int insertTeacher(Teacher teacher){		
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(Mapper.class).insertTeacher(teacher);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}
	public List<TeacherDetail> listTeacher(){
		List<TeacherDetail> list = null;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		try {
			list = sqlsession.getMapper(Mapper.class).listTeacher();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlsession.close();
		}
		return list;
	}
	
	
	public TeacherDetail detailTeacher(int memberId){
		TeacherDetail teacher = null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			teacher = sqlSession.getMapper(Mapper.class).detailTeacher(memberId);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return teacher;
	}
	
	//액터 : 모든사용자 ==> 로그인정보 확인
	public MemberCheck memberCheck(String id){
		SqlSession session=getSqlSessionFactory().openSession();
		MemberCheck mc=null;
		try {
			mc=session.getMapper(Mapper.class).memberCheck(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return mc;
	}
	
	//액터 : 모든사용자 ==> 유저 세부정보 출력
	public Member memberDetail(String id){
		SqlSession session=getSqlSessionFactory().openSession();
		Member member=null;
		try {
			member=session.getMapper(Mapper.class).memberDetail(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return member;
	}
	
	//액터 : 모든사용자 ==> 최초로그인시 비밀번호 변경 (UPDATE)
	public int userModPassowrd(Member member){
		SqlSession session=getSqlSessionFactory().openSession();
		int re=0;
		try {
			re=session.getMapper(Mapper.class).userModPassowrd(member);
			if(re>0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return re;
		
	}
	
	//교사 ==> 학생 입력 및 수정
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
	//교사 ==> 학생 입력 및 수정
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
	//교사 ==> 학생 정보 NULL LIST
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
	//교사 ==> 학생 세부 열람
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
	//교사 ==> 학생 내용 삭제
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
	//교사 ==> 학생 내용 삭제
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
		//관리자 ->공지사항 등록
				public int insertNoticeBoard(NoticeBoard noticeBoard) {
					SqlSession sqlSession = getSqlSessionFactory().openSession();
					int re = -1;
					try {
						re = sqlSession.getMapper(Mapper.class).insertNoticeBoard(noticeBoard);
						if(re > 0){
							sqlSession.commit();
						}else{
							sqlSession.rollback();
						}
					} catch (Exception e) {
						e.printStackTrace();
					}finally{
						sqlSession.close();
					}
					return re;
					
				}
		
		//공지사항 글번호 
				public int noticeBoardNum() {
					SqlSession sqlSession = getSqlSessionFactory().openSession();

					if(sqlSession.getMapper(Mapper.class).noticeBoardNum()==null){
						return 0;
					}else{
						return  sqlSession.getMapper(Mapper.class).noticeBoardNum();
					}
				}
				
				//페이징처리 글갯수 세기
				public int noticeCountBoard(Search search) {
					SqlSession sqlSession = getSqlSessionFactory().openSession();
					int re = 0;
					try {
						re = sqlSession.getMapper(Mapper.class).noticeCountBoard(search);
					} catch (Exception e) {
						// TODO: handle exception
					}finally{
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
					}finally{
						sqlSession.close();
					}
					
					return list; 
				}
				//공지사항조회수
				public int addHitcount(int noticeBoardNum) {
					SqlSession sqlSession = getSqlSessionFactory().openSession();
					int re = -1;
					try {
						re = sqlSession.getMapper(Mapper.class).addHitcount(noticeBoardNum);
						if(re > 0){
							sqlSession.commit();
						}else{
							sqlSession.rollback();
						}
					} catch (Exception e) {
						e.printStackTrace();
					}finally{
						sqlSession.close();
					}
					return re;
					
				}
				
				//공지사항 세부보기

				public NoticeBoard noticeBoardDetail(int noticeBoardNum) {
					SqlSession sqlSession = getSqlSessionFactory().openSession();
					NoticeBoard noticeBoard = null;
					try {
						noticeBoard = sqlSession.getMapper(Mapper.class).noticeBoardDetail(noticeBoardNum);
					} catch (Exception e) {
						// TODO: handle exception
					}finally{
						sqlSession.close();
					}
					
					return noticeBoard; 
				}
				
				//학교정보조회
				public School schoolDetail() {
					SqlSession session=getSqlSessionFactory().openSession();
					School school = null;
					try {
						school=session.getMapper(Mapper.class).schoolDetail();
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						session.close();
					}
					return school;
				}
				
				


}
