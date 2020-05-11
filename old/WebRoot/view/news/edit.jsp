<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>首页</title> 
<body>
 <form action="" method="post">

 <div class='rowline'>
 <label>新闻名称</label>
 <input type="text" name="newsid" value="${news.newsid }">
 </div>
 <div class='rowline'>
 <label>分类</label>
 <input type="text" name="sortid" value="${news.sortid }">
 </div>
  <div class='rowline'>
 <label>新闻题目</label>
 <input type="text" name="title" value="${news.title }">
 </div>
  <div class='rowline'>
 <label>正文</label>
 <input type="text" name="text" value="${news.text }">
 </div>

 <div class='rowline'>
 <input type="submit" value="编辑">
 </div>
</form>
</body>
</html>
