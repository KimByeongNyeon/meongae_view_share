<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String eventType = request.getParameter("event-type");
%>
<%if(eventType.equals("진행중")){%>
<!-- 진행중인 이벤트 -->
	<jsp:include page="on_going_content.jsp" />
<!-- 진행중 이벤트 끝 -->
<%}%>
<%if(eventType.equals("종료")){%>
<!-- 종료된 이벤트 -->
	<jsp:include page="end_content.jsp" />
<!-- 종료된 이벤트 끝 -->
<%}%>