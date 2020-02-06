<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 우선 먼저 태그지시자 설정!!!!! -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 코어 라이브러리 실행 -->
	<!-- 변수명 지정 -->
	<c:set var="vatName" value="varValue">
	</c:set>
	<!-- 변수 출력 -->
	vatName : <c:out value="${vatName}">
	</c:out>
	<br />
	<!-- 변수값 삭제 -->
	<c:remove var="vatName">
	</c:remove>
	vatName : <c:out value="${vatName}">
	</c:out>
	
	<hr>
	
	<!-- try catch문과 동일 -->
	<c:catch var="error">
		<%=2/0%>
	</c:catch>
	<br />
	<c:out value="${error}">
	</c:out>
	
	<hr>

	<!-- if문 -->
	<c:if test="${1+2==3}">
	<!-- 조건이 맞으면 출력 -->1 + 2 = 3
	</c:if>
	
	<c:if test="${1+2!=3}">
		1 + 2 != 3
	</c:if>
	
	<hr>

	<!-- for와 동일 -->
	<c:forEach var="fEach" begin="0" end="30" step="3">
		${fEach}
	</c:forEach>

</body>
</html>