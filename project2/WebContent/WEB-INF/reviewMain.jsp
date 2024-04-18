<%@page import="com.project2.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project2.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<ReviewVO> list = null;
	try (SqlSession ss = DBService.getFactory().openSession()) {
		list = ss.selectList("review.all");
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println("list : " + list);
	
	pageContext.setAttribute("attr_list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰목록 메인 페이지</title>
<script>
	
</script>
</head>
<body>
	<form action="controller?category=selectOne" method="get">
		<select name="idx">
			<option value="0">영화명</option>
			<option value="1">작성자</option>
			<option value="2">작성일</option>
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검색">
		
		<input type="hidden" name="category" value="selectOne">
	</form>
	
	<h2>리뷰모음</h2>
	<hr>
	
	<c:forEach var="vo" items="${attr_list }">
	<table>
		<tr>
			<td>${vo.mNo }</td>
			<td>
				<a href="detail.jsp?rNo=${vo.rNo }">${vo.rTitle }</a>
			</td>
		</tr>
		<tr>
			<td>${vo.rNick }</td>
			<td>${vo.rDate }</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="추천 ">
				${vo.rRec }
			</td>
			<td></td>
		</tr>
	</table>
	<hr>
	</c:forEach>

	
</body>
</html>