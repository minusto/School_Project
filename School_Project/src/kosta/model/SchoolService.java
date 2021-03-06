package kosta.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<StudentList> studentListService(String schoolId){
		return dao.studentList(schoolId);
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
	public List<TeacherDetail> listTeacher(String id){
		return dao.listTeacher(id);
	}
	
	//액터 : 교내관리자 ==> 교사목록 ==> 상세보기
	public TeacherDetail detailTeacher(String memberId){
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
	
	//교사 ==> 학생 모의고사 점수 입력 - 정보가 입력된 학생 리스트 가져오기
	public List<ExistStudentList> selectExistStudentSerevice(String id) {
		return dao.selectExistStudent(id);
	}
	//교사 => 학생 모의고사 점수 입력 - 탐구 과목 리스트 가져오기
	public List<ResearchSubject> selectResearchSubjectListService() {
		return dao.selectResearchSubjectList();
	}
	//교사 => 학생 모의고사 점수 입력 - 제2외국어 과목 리스트 가져오기
	public List<SecondLanguage> selectSecondLanguageSubjectListService() {
		return dao.selectSecondLanguageSubjectList();
	}
	//교사 ==> 학생 모의고사 점수 입력 - 모의고사 아이디 가져오기
	public String selectMockIDService(MockType mockType) {
		return dao.selectMockID(mockType);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 탐구과목 아이디 가져오기
	public String selectResearchIdService(String researchName) {
		return dao.selectResearchId(researchName);
	}
	//교사 => 학생 모의고사 점수 입력 - 제2외국어 아이디 가져오기
	public String selectSecondLanguageId(String languageName) {
		return dao.selectSecondLanguageId(languageName);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 1학년
	public int insertMockTest1GradeService(MockTest mockTest) {
		return dao.insertMockTest1Grade(mockTest);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 2학년
	public int insertMockTest2GradeService(MockTest mockTest) {
		return dao.insertMockTest2Grade(mockTest);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 모의고사 점수 넣기 - 3학년
	public int insertMockTest3GradeService(MockTest mockTest) {
		return dao.insertMockTest3Grade(mockTest);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 탐구 점수 넣기
	public int insertResearchScoreService(ResearchSubjectScore researchScore0, ResearchSubjectScore researchScore1, ResearchSubjectScore researchScore2) {
		int check = -1;
		int re0, re1, re2;
		if(researchScore0.getMockId() != null) {
			re0 = dao.insertResearchScore(researchScore0);
		} else {
			re0 = 0;
		}
		if(researchScore1.getMockId() != null) {
			re1 = dao.insertResearchScore(researchScore1);
		} else {
			re1 = 0;
		}
		if(researchScore2.getMockId() != null) {
			re2 = dao.insertResearchScore(researchScore2);
		} else {
			re2 = 0;
		}
		
		if((re0 + re1 + re2) >= 2) {
			check = 1;
		}
		return check;
	}
	//교사 ==> 학생 모의고사 점수 입력 - 제2외국어 점수 넣기 - 2학년, 3학년만
	public int insertSecondLangScoreService(SecondLanguageScore secondLanguageScore) {
		return dao.insertSecondLangScore(secondLanguageScore);
	}
	//교사 ==> 학생 모의고사 점수 입력 - 입력된 모의고사였는지 검사
	public int checkMockTestInsertedScoreService(MockTest mockTest) {
		MockTest m = dao.checkMockTestInsertedScore(mockTest);
		int re = 0;
		if(m != null) {
			re = -1;
		} else {
			re = 1;
		}
		return re;
	}
	
	//진학시뮬레이션 - memberId에 대해 희망대학이 있는지 검사
	public int checkHopeUniversityService(String memberId) {
		int re = 0;
		HopeUniversity hu = dao.selectHopeUniversity(memberId);
		if(hu == null) {
			re = -1;
		} else {
			re = 1;
		}
		return re;
	}
	//진학시뮬레이션 - 대학교 리스트 조회
	public List<University> selectUniversityListService() {
		return dao.selectUniversityList();
	}
	//진학시뮬레이션 - EntranceInfo에 있는 해당하는 대학교의 학과 리스트 조회
	public List<Major> selectMajorListService(String universityName) {
		return dao.selectMajorList(universityName);
	}
	//진학시뮬레이션 - 대학교 이름으로 아이디 가져오기
	public String selectUniversityIdService(String universityName) {
		return dao.selectUniversityId(universityName);
	}
	//진학시뮬레이션 - 대학교 이름으로 아이디 가져오기
	public String selectMajorIdService(String majorName) {
		return dao.selectMajorId(majorName);
	}
	//진학시뮬레이션 - 대학교 학과의 가장 최신 입시요강 연도 가져오기
	public int selectEntranceInfoYearService(EntranceInfo entranceInfo) {
		return dao.selectEntranceInfoYear(entranceInfo);
	}
	//진학시뮬레이션 - 희망대학 입력하기
	public int insertHopeUniversityService(HopeUniversity hopeUniversity) {
		return dao.insertHopeUniversity(hopeUniversity);
	}
	//진학시뮬레이션 - 학생의 아이디로 입력되어있는 희망 대학을 반환
	public HopeUniversity selectHopeUniversityService(String memberId) {
		return dao.selectHopeUniversity(memberId);
	}
	//진학시뮬레이션 - 대학교 아이디로 이름 가져오기
	public String selectUniversityNameService(String universityId) {
		return dao.selectUniversityName(universityId);
	}
	//진학시뮬레이션 - 학과 아이디로 이름 가져오기
	public String selectMajorNameService(String majorId) {
		return dao.selectMajorName(majorId);
	}
	//진학시뮬레이션 - 모든 대학교 학과 입시정보 리스트 출력
	public List<AllEntranceInfo> selectAllEntranceInfoService() {
		return dao.selectAllEntranceInfo();
	}
			
	
	//관리자 -> 공지사항 등록
	public int insertNoticeBoardService(HttpServletRequest request,String id) throws Exception{
		NoticeBoard noticeBoard=new NoticeBoard();		
		String uploadPath  = request.getRealPath("upload");
		int size = 20*1024*1024; //20mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			
		noticeBoard.setNoticeBoardTitle(multi.getParameter("noticeBoardTitle"));
		noticeBoard.setNoticeBoardPassword(multi.getParameter("noticeBoardPassword"));
		noticeBoard.setNoticeBoardContent(multi.getParameter("noticeBoardContent"));
		noticeBoard.setSchoolAdminId(id);
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
	public School SchoolDetail(String id){
		return dao.schoolDetail(id);
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
	
	//사용자iD등록
		public int insertMemberIdService(Member member){
			return dao.insertMemberId(member);
		}
		
		//학부모iD등록
		public int insertParentIdService(String parent){
			return dao.insertParentId(parent);
		}
		
		//사용자 등급 등록
		public int insertRegistManageService(RegistManage registManage){
			return dao.insertRegistManage(registManage);
		}
		//학생아이디 등록+나머지null 등록
		public int insertStudentIdService(Student student){
			return dao.insertStudentIdManage(student);
		}

		//사용자 ID 목록

		public List<RegistManage> userListService(String id){
			return dao.userList(id);
		}
		//교사 등급 등록
		public int insertTeacherGradeService(RegistManage registManage){
			return dao.insertTeacherGrade(registManage);
		}
		
		public SchoolRegist schoolRegistSchoolIdService(String id){
			return dao.schoolRegistSchoolId(id);
		}
		
		public RegistManage getSchoolAdminIdService(String id){
			return dao.getSchoolAdminId(id);
		}
	
		public List<Member> sameSchoolStudentNullListService(String id){
			return dao.sameSchoolStudentNullList(id);
		}
		
		//교사 사진 추출
		public Teacher teacherImageService(String id){
			return dao.teacherImage(id);
		}
		
		//학생 사진 추출
		public Student studentImageService(String id){
			return dao.studentImage(id);
		}
		//정시 커트라인 추출
		public EntranceInfo mockTestCutlineService(Cutline cutline){
			return dao.mocktestCutline(cutline);
		}
		//희망대학 국영수사탐 합계
		public List<Map<String, Object>> mockTestSum(String id) {
			return dao.mockTestSum(id);
		}
		
		// ---------------------성적조회
		public List<MockType> studentMockTestListService(String id){
			return dao.studentMockTestList(id);
		}
		
		public List<MockTest> studentMockTestScoreListService(){
			return dao.studentMockTestScoreList();
		}
		
		//학생에 따라 한국사 점수리스트
		public List<ResearchSubjectScore> koreaHistroyScoreListService(String id){
			return dao.koreaHistroyScoreList(id);
		}
		//학생에 따라 탐구과목을 제외한 나머지 과목 점수 리스트
		public List<MockScoreDetailList> studentMockScorePlusSecondLangListService(String id){
			return dao.studentMockScorePlusSecondLangList(id);
		}
		
		public List<MockResearchScoreDetailList> studentMockResearchSocreListService(String id){
			return dao.studentMockResearchSocreList(id);
		}
		
		public List<MockTest> selectMyKorScoreService(String id){
			return dao.selectMyKorScore(id);
		}
		
		public List<MockKorAvgScore> selectMockKorAvgScoreService(String id){
			return dao.selectMockKorAvgScore(id);
		}
		//----------------------------성적조회
		public List<RecommendInfo> recommendUniversityService(int total){
			return dao.recommendUniversity(total);
			
		}

		//과목 선택 (내신성적입력)
		public Subject selectSubjectService(String s_name){
			return dao.selectSubject(s_name);
		}
		
		//내신성적 입력
	    public int insertSubjectScore(SubjectScore subjectscore){
	    	int successCnt = 0;
	    	for (int i = 0; i < subjectscore.getArrMidExam().length; i++) {
	            subjectscore.setSubjectId(subjectscore.getArrSubjectId()[i]);
	            subjectscore.setMemberId(subjectscore.getMemberId());
	            subjectscore.setSemester(subjectscore.getSemester());
	            subjectscore.setMidExam(subjectscore.getArrMidExam()[i]);
	            subjectscore.setFinalExam(subjectscore.getArrFinalExam()[i]);
	            subjectscore.setPerformanceEvaluation(subjectscore.getArrPerformanceEvaluation()[i]);
	            successCnt = successCnt + dao.insertSubjectScore(subjectscore);
	         }
	         return successCnt;
	      }
	    
	    public int createTableService(CreateTable createTable){
	    	createTable.setNum(dao.createTableNum()+1);
	    	return dao.createTable(createTable);
	    }
	    
	    public List<CreateTable> CreateTableListService(){
	    	return dao.createTableList();
	    }
		
		//전체과목별 내신점수리스트
	    public List<AllSubjectScoreList> allSubjectScoreListService(int semester){
	    	return dao.allSubjectScoreList(semester);
	    }
	    //전체 과목별 등수
	    public List<AllRankingScoreList> allRankingScoreListService(int semester){
	    	return dao.allRankingScoreList(semester);
	    }

	    //전체 과목별 전체명수
	    public List<AllStudentNum> allStudentNumService(int semester){
	    	return dao.allStudentNum(semester);
	    }
		
		
}
