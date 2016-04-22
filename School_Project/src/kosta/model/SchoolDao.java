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

}
