package kosta.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SchoolService {
	public static SchoolDao dao;
	public static SchoolService service=new SchoolService();
	
	private static final int PAGE_SIZE = 3;
	
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
	
	//교사 ==> 학생 입력 및 수정
	public int updateMemberService(Member member){
		return dao.updateMember(member);
	}
	//교사 ==> 학생 입력 및 수정
	public int updateStudentService(Student student){
		return dao.updateStudent(student);
	}
	
	//교사 ==> 학생 정보 NULL LIST
	public List<StudentNullList> studentNullListService(){
		return dao.studentNullList();
	}
	
	//교사 ==> 학생 세부 열람
	public StudentDetail selectStudentDetailService(String m_id){
		return dao.selectStudentDetail(m_id);
	}
	
	//교사 ==> 학생 내용 삭제
	public int deleteStudentService(String m_id){
		return dao.deleteStudent(m_id);
	}
	//교사 ==> 학생 내용 삭제
	public int deleteStudentService2(String m_id){
		return dao.deleteStudent2(m_id);
	}
	
	//관리자 -> 공지사항 등록
	public int insertNoticeBoardService(HttpServletRequest request) throws Exception{
		NoticeBoard noticeBoard=new NoticeBoard();		
		String uploadPath  = request.getRealPath("upload");
		int size = 20*1024*1024; //20mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			
		noticeBoard.setNoticeBoardTitle(multi.getParameter("noticeBoardTitle"));
		noticeBoard.setNoticeBoardPassword(multi.getParameter("noticeBoardPassword"));
		noticeBoard.setNoticeBoardContent(multi.getParameter("noticeBoardContent"));		
		noticeBoard.setSchoolAdminId(multi.getParameter("schoolAdminId"));
		noticeBoard.setNoticeBoardNum(dao.noticeBoardNum()+1);
		
		//파일업로드
		if(multi.getFilesystemName("noticeBoardFileName")!=null){
			String noticeBoardFileName  = multi.getFilesystemName("noticeBoardFileName"); //이메소드로 파일 이름 구할수 잇음
			noticeBoard.setNoticeBoardFileName(noticeBoardFileName);  //노티스 보드객체에 추가 
		}else{
			noticeBoard.setNoticeBoardFileName(""); 
		}
		return dao.insertNoticeBoard(noticeBoard);
	}
	
	
	//공지사항 목록
	public ListModel noticeBoardListService(int requestPage,
			HttpServletRequest request) {

		Search search = new Search();
		HttpSession session = request.getSession();

		// 기존에 검색된 세션내용 삭제
		if (request.getParameter("temp") != null) {
			session.removeAttribute("search");

		}
		// 검색시
		if (request.getParameterValues("area") != null) {
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%" + request.getParameter("searchKey") + "%");
			session.setAttribute("search", search);

			// 검색후 페이징 클릭
		} else if ((Search) session.getAttribute("search") != null) {
			search = (Search) session.getAttribute("search");

		}

		int totalCount = dao.noticeCountBoard(search);// countBoard에 search를 넣어서 총 글
												// 갯수를 다시 설정
		int totalPageCount = totalCount / PAGE_SIZE;
		if (totalCount % PAGE_SIZE > 0) {
			totalPageCount++;
		}

		int startPage = requestPage - (requestPage - 1) % 5;

		int endPage = startPage + 4;

		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}

		List<NoticeBoard> list = dao.noticeBoardList((requestPage - 1)
				* PAGE_SIZE, search); //

		return new ListModel(list, requestPage, totalPageCount, startPage,
				endPage);
	}
	
	//히트카운트
	public int addHitcountService(int noticeBoardNum) {
		return dao.addHitcount(noticeBoardNum);
	}
	//공지사항 세부보기

	public NoticeBoard noticeBoardDetailService(int noticeBoardNum){		
		return dao. noticeBoardDetail(noticeBoardNum) ;		
	}
	//학교 정보조회
	public School SchoolDetail(){
		return dao.schoolDetail();
	}
	
	//액터 : 시스템 ==> 학교관리자 테이블 정보 조회
	public SchoolAdmin schoolAdminInfoDetailService(String id){
		return dao.schoolAdminInfoDetail(id);
	}	
	//액터 : 시스템 ==> 학부모 테이블 정보 조회
	public Parent parentInfoDetailService(String id){
		return dao.parentInfoDetail(id);
	}
	//액터 : 시스템 ==> 시스템관리자 테이블 정보 조회	
	public SystemAdmin systemAdminInfoDetailService(String id){
		return dao.systemAdminInfoDetail(id);
	}
	//액터 : 학교관리자 ==> 최초로그인 비밀번호변경		
	public int schoolAdminModPasswordService(SchoolAdmin schoolAdmin){
		return dao.schoolAdminModPassword(schoolAdmin);
	}
	//액터 : 학부모 ==> 최초로그인 비밀번호변경
	public int parentModPasswordService(Parent parent){
		return dao.parentModPassword(parent);
	}
	
	//액터 : 학교관리자 ==> 학교등록
	public int insertSchoolRegistService(SchoolRegist schoolRegist){
		return dao.insertSchoolRegist(schoolRegist);
	}
	
	//학부모 정보 NULL List
	public List<ParentNullList> ParentNullListService(){
		return dao.parentNullList();
	}
	//과목 정보 조회
	public List<Subject> subjectListService(){
		return dao.subjectList();
	}
	//학교 정보 조회
	public List<School> schoolListService(){
		return dao.schoolList();
	}
	
	
}
