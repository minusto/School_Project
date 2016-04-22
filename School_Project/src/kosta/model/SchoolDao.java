package kosta.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
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

}
