<%@page import="com.gyojincompany.exe.MemberDto"%>
<%@page import="com.gyojincompany.exe.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("memberId");
		//로그인 한 유저의 아이디를 세션에서 가져오기
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.getMemberInfo(sessionId);
	%>
	
	아이디 : <%= dto.getId() %><br>
	이름 : <%= dto.getName()%><br>
	가입일 : <%= dto.getJointime() %>
	
</body>
</html>