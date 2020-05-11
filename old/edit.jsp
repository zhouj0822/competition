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
 <label>用户名</label>
 <input type="text" name="userid" value="${user.userid }">
 </div>
 <div class='rowline'>
 <label>姓名</label>
 <input type="text" name="name" value="${user.name }">
 </div>
  <div class='rowline'>
 <label>性别</label>
 <input type="text" name="sex" value="${user.sex }">
 </div>
  <div class='rowline'>
 <label>学院</label>
 <input type="text" name="academy" value="${user.academy }">
 </div>
<div class='rowline'>
 <label>班级</label>
 <input type="text" name="grade" value="${user.grade }">
 </div>
 <div class='rowline'>
 <label>密码</label>
 <input type="text" name="password" value="${user.password }">
 </div>
 <div class='rowline'>
 <input type="submit" value="编辑">
 </div>
</form>
</body>
</html>
