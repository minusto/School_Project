package kosta.model;

import java.util.List;

public class SchoolService {
	public static SchoolDao dao;
	public static SchoolService service=new SchoolService();
	
	public static SchoolService getInstance(){
		dao=SchoolDao.getInstance();
		return service;
	}
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
	
}
