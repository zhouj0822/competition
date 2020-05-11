<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>首页</title> 
<body>
  <table class="table table-bordered">
	<c:forEach var="b" items="${news }">
	<tr>
 		<td>${b.title }</td>
		<td>${b.time }</td>

	</tr>
	<tr>
	<td>
	<a href='edit?id=${b.newsid }'>编辑</a>
	<a href='del?id=${b.newsid }'>删除</a>
	</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>


