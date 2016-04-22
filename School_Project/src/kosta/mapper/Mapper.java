package kosta.mapper;

import java.util.List;

import kosta.model.Parent;
import kosta.model.SchoolAdmin;
import kosta.model.SchoolAdminRegist;
import kosta.model.StudentList;

public interface Mapper  {
	public int insertSchoolAdmin(SchoolAdmin schoolAdmin);
	public int insertSchoolAdminRegist(SchoolAdminRegist schoolAdminRegist);
	public List<StudentList> studentList();
	public int insertParent(Parent parent);
	
	
}
