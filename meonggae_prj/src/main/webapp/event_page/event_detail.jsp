<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String eventCode = request.getParameter("event-code");
%>
<%if(eventCode != null){%>
<div class="container" style="height:1000px;">
		<table class="table table-hover;" style="width: 100%;">
		<tr>
		<th style="width: 30%">제목(DB에서 title)</th>
		<th style="width: 20%">작성자(DB에서 ID)</th>
		<th style="width: 20%">조회 수(DB에서 조회수 카운트)</th>
		<th style="width: 5%"><a href="http://localhost/meonggae_prj/event_page/event_main.jsp">목록으로</a></th>
		</tr>
		<tr>
		<td colspan="5">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
		 sed do eiusmod tempor incididunt ut labore et dolore magna 
		 aliqua. Ut enim ad minim veniam, quis nostrud exercitation
		  ullamco laboris nisi ut aliquip ex ea commodo consequat. 
		  Duis aute irure dolor in reprehenderit in voluptate velit 
		  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint 
		  occaecat cupidatat non proident, sunt in culpa qui officia 
		  deserunt mollit anim id est laborum.</td>
		</table>
 </div>
<%}else{%>
	없음 다시 시도하셈
<%}%>