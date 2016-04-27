<%@page import="kosta.model.ResearchSubjectScore"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mockType" class="kosta.model.MockType"></jsp:useBean>
<jsp:setProperty property="*" name="mockType"/>
<jsp:useBean id="mockTest" class="kosta.model.MockTest"></jsp:useBean>
<jsp:setProperty property="*" name="mockTest"/>
<jsp:useBean id="researchPackage" class="kosta.model.ResearchSubjectPackage"></jsp:useBean>
<jsp:setProperty property="*" name="researchPackage"/>
<jsp:useBean id="secondLanguage" class="kosta.model.SecondLanguage"></jsp:useBean>
<jsp:setProperty property="*" name="secondLanguage"/>
<jsp:useBean id="secondLanguageScore" class="kosta.model.SecondLanguageScore"></jsp:useBean>
<jsp:setProperty property="*" name="secondLanguageScore"/>
<%
	if(mockTest.getMemberId() == null) {
		out.println("<script type='text/javascript'>alert('학생 아이디가 없습니다');history.go(-1);</script>");
	}
	else if(researchPackage.getResearchSubjectName0().equals(researchPackage.getResearchSubjectName1()) || researchPackage.getResearchSubjectName0().equals(researchPackage.getResearchSubjectName2()) 
			|| researchPackage.getResearchSubjectName1().equals(researchPackage.getResearchSubjectName2())) {
		out.println("<script type='text/javascript'>alert('탐구 과목이 중복됩니다');history.go(-1);</script>");
	} else {
		SchoolService service = SchoolService.getInstance();
		String mockId = service.selectMockIDService(mockType); //모의고사 정보로 아이디를 가져온다.
		mockTest.setMockId(mockId);
		
		int checkMockTest = service.checkMockTestInsertedScoreService(mockTest); //모의고사 점수가 이미 입력되었는지 검사
		if(checkMockTest < 0) { //이미 점수가 있음
			out.println("<script type='text/javascript'>alert('해당하는 모의고사 점수가 이미 있습니다');history.go(-1);</script>");
		} else if (checkMockTest == 0) {
			out.println("<script type='text/javascript'>alert('모의고사 체크 오류');history.go(-1);</script>");
		} else { //모의고사 점수가 입력된 것이 없다면
			String seconLangId = null;
			if(secondLanguage.getLanguageSubjectName() != null) { //제2외국어 이름이 들어왔다면 2학년 혹은 3학년인 것. 제2외국어 이름에 따라 id를 가져온다.
				seconLangId = service.selectSecondLanguageId(secondLanguage.getLanguageSubjectName());
				mockTest.setLanguageId(seconLangId);
				secondLanguageScore.setMockId(mockId);
			}
			
			int mockRe = -1; //모의고사 내용을 insert 한 결과
			switch (mockType.getMockGrade()) { //학년에 맞게 모의고사 내용을 집어넣기	
			case 1:
				mockRe = service.insertMockTest1GradeService(mockTest);
				break;
			case 2:
				mockRe = service.insertMockTest2GradeService(mockTest);			
				break;
			case 3:
				mockRe = service.insertMockTest3GradeService(mockTest);						
				break;
			}
			
			//탐구
			ResearchSubjectScore rScore0 = new ResearchSubjectScore(); //한국사를 위한 객체
			ResearchSubjectScore rScore1 = new ResearchSubjectScore(); //탐구 점수를 각각 담기 위한 탐구 객체 두개
			ResearchSubjectScore rScore2 = new ResearchSubjectScore();
			
			String researchId1 = service.selectResearchIdService(researchPackage.getResearchSubjectName1());
			String researchId2 = service.selectResearchIdService(researchPackage.getResearchSubjectName2());
			
			rScore1.setMockId(mockId); //탐구 객체에 각각 내용을 집어넣기
			rScore1.setMemberId(mockTest.getMemberId());
			rScore1.setResearchSubjectId(researchId1);
			rScore1.setResearchSubjectOriginalScore(researchPackage.getResearchSubjectOriginalScore1());
			rScore1.setResearchSubjectStandardScore(researchPackage.getResearchSubjectStandardScore1());
			rScore1.setResearchSubjectPercentile(researchPackage.getResearchSubjectPercentile1());
			
			rScore2.setMockId(mockId);
			rScore2.setMemberId(mockTest.getMemberId());
			rScore2.setResearchSubjectId(researchId2);
			rScore2.setResearchSubjectOriginalScore(researchPackage.getResearchSubjectOriginalScore2());
			rScore2.setResearchSubjectStandardScore(researchPackage.getResearchSubjectStandardScore2());
			rScore2.setResearchSubjectPercentile(researchPackage.getResearchSubjectPercentile2());
			
			if(researchPackage.getResearchSubjectOriginalScore0() > 0) {
				String researchId0 = service.selectResearchIdService(researchPackage.getResearchSubjectName0());
				rScore0.setMockId(mockId);
				rScore0.setMemberId(mockTest.getMemberId());
				rScore0.setResearchSubjectId(researchId0);
				rScore0.setResearchSubjectOriginalScore(researchPackage.getResearchSubjectOriginalScore0());
				rScore0.setResearchSubjectStandardScore(researchPackage.getResearchSubjectStandardScore0());
				rScore0.setResearchSubjectPercentile(researchPackage.getResearchSubjectPercentile0());
			}
			
			int researchRe = -1; //탐구 점수 insert 결과
			int secondLangRe = -1; //제2외국어 insert 결과
			if(mockRe > 0) { //모의고사 점수가 들어갔다면 다음으로 탐구 점수를 insert
				researchRe = service.insertResearchScoreService(rScore0, rScore1, rScore2);
				if(researchRe > 0) { //탐구점수 입력이 성공하면
					if(mockType.getMockGrade() != 1 && secondLanguageScore.getSecondLanguageOriginalScore() > 0) { //1학년이 아니고 제2외국어 점수가 있다면 제2외국어를 insert
						secondLangRe = service.insertSecondLangScoreService(secondLanguageScore);
						if(secondLangRe > 0) { //제2외국어 입력 성공
							out.println("<script type='text/javascript'>alert('입력 성공');");
							response.sendRedirect("../teacherInsertMockScoreForm.jsp");													
						} else { //제2외국어 입력 실패
							out.println("<script type='text/javascript'>alert('제2외국어 입력에 실패했습니다');history.go(-1);</script>");							
						}
					} else { //1학년일 경우, 탐구점수 입력에 성공했으므로 모의고사 점수 입력 모두 성공
						out.println("<script type='text/javascript'>alert('입력 성공');");
						response.sendRedirect("../teacherInsertMockScoreForm.jsp");						
					}
				} else { //탐구 점수 입력에 실패하면 다시 되돌아감
					out.println("<script type='text/javascript'>alert('탐구 입력에 실패했습니다');history.go(-1);</script>");
				}
			} else {
				out.println("<script type='text/javascript'>alert('모의고사 점수 입력에 실패했습니다');history.go(-1);</script>"); //모의고사 내용을 입력 실패했을 경우 이전으로 돌아감
			}
		}
	}

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>​