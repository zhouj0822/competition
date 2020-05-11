
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
  String path = request.getContextPath();
  String basePath=null;
  basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  int port=request.getServerPort();
	
	if(port==80){
	basePath=request.getScheme()+"://"+request.getServerName()+path;
	
	}else{
		basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
		
	}
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>首页</title> 
<style type="text/css">
* {
    box-sizing: border-box;
}
body {
}
.footer {
    background-color: white;
    color: black;
    text-align: center;
    width: 100%;
    padding: 15px;
    height: 50px;
    float: left;
    
}
.topmenu {
    list-style-type: none;
    margin-top: 15px;
    margin-bottom:10px;
    padding: 0;
    overflow: hidden;
    background-color: #383535;
    box-shadow: 5px 5px 5px #888888;
}
.topmenu li {
    float: left;
}
.topmenu li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 15px;
    text-decoration: none;
}
.topmenu li a:hover {
    background-color: #5c5b5b;
    color: white;
}
.topmenu li a.active {
    color: black;
    background-color: white;
}

.b{
	background-color:#5c5b5b;
}
.kong{
  padding-left: 561.5px;
  color: #383535;
}
.picc{
	float: left;
  margin-top: 200px; 
}
.log1{
  padding-top: 50px;
  padding-left: 200px;
}
.login1{
  background-color:#396e5e;
  border: none;
  color: white;
  text-align: center;
  width:150px; 
  height: 25px;
  margin-top: 50px;
  margin-left: 300px;
}
.login2{
  background-color: #396e5e;
  border: none;
  color: white;
  text-align: center;
  width:150px; 
  height: 25px;
  margin-top: 50px;
  margin-left: 10px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.text{
	padding-top: 50px;
    padding-left: 200px;
    float:left;
}
.textt{
	margin-top: 50px;
    float: left;
    padding: 200px;
}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>
<ul class="topmenu">
  <li class="a"><a href="/user/Topp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/manager/top"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/manager/sorry"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/shequ"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/index"><span class="glyphicon glyphicon-user"></span>&nbsp;用户信息</a></li>
  <li class="f"><a href="/unlogin/Top"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
</ul>
<form action="" method="post">
  <div class="log">
      <div class="log1">标题
      <input type="text" name='title'  value="${shequ.title }"></input>
      </div>
      <div class="log1">图片
      <input class="pic" type='file' name='xid'   value="${shequ.xid }"></input>
      </div>
  </div>
  <div class="text">内容</div>
  <input class="textt" type="text" name='text'  value="${shequ.text }"  ></input>
  <div class="log"> 
      <a href="#"><input class="login1" type='submit' value='修改'></input></a>
      <a href="社区.html"><input class="login2" type='button' value='取消'></input></a>
  </div>

    
</form>   
<div>
<img class="picc" src="/img/linee.jpg" width="1100px"  height='10px'></img>
</div>
<div class="footer">
  	<p>赞助招商</br>SEEKING FOR SPONSORS</p>
    </br></br>
</div>
</div>
</body>
</html>


