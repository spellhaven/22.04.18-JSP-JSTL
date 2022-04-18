<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용법 연습. L3에 taglib directive 준 거 잘 봐.</title>
</head>
<body>

	<!-- 와! 자바 스크립틀릿과 HTML을 섞어 쓰는 것보다 JSTL이 훨씬 편하지? 지 렸 다! 
	이 예제에 나오는 set, out, remove, catch, if, forEach만 알고 있으면 든든하다. ㅋ.-->


	<!-- JSTL로 선언은 이렇게 한다. -->
	<c:set var = "score" value = "100" />
		
	<!-- 출력은 이렇게 한다. EL이랑 같이 쓰니 정말 맛있네.-->
	점수: <c:out value="${score}"/>
	
	
	
	<hr>	
	<!-- 특이하게 변수를 지우는 remove라는 놈이 있다. 값이 필요한 게 아니니, 굳이 ${EL}을 쓰지 않았다. -->
	<c:remove var="score"/>
	해치웠나? 점수: <c:out value="${score}"/>
	
	
	
	<hr>
	<!-- JSTL의 예외 처리 -->
	<c:catch var = "error">
		<%= 10/0 %>
	</c:catch>
	<c:out value="${error}"/> <!-- 이 줄은 무슨 에러가 났냐? 출력해 주는 놈이다. -->
		
	
	<hr>
	<!-- JSTL로 if문도 만들 수 있다는데... -->
	<c:if test="${10>3}">
		조건이 true이면 이 줄이 찍힌다. 안녕하세요!
	</c:if>
	
	
	
	<hr>
	
	<!-- JSTL로 for문도 만들 수 있다는데... 게시판 만들 때 특히 잘 쓰인다던데... 중요함 ㅋ.-->
	
	<c:forEach var="i" begin = "0" end = "10" step = "2"> <!-- 일케 처음 값, 끝 값, step 크기를 써 준다. -->
	<!-- for(int i=0; i<=10; i = i+2)와 같다. -->	
		${i} <br>
	</c:forEach>
	

</body>
</html>