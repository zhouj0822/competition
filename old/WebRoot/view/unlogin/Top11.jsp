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

.a{
  background-color:#5c5b5b;
}
.kong{
  padding-left: 591.5px;
  color: #383535;
}
.picc{
  float: left;
  margin-top: 200px; 
}
.tie{
  color:black;
}
.name{
  text-align: center;
}
.text{
  margin-top:20px;
  margin-left:200px;
  margin-right:200px;
}
.biaoti{
  margin-left:50px;
  }
.zhengwen{
  margin-top:20px;
  margin-left:50px;
}
.pic{
  margin-top: 20px;
  margin-left: 1000px;
}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>
<ul class="topmenu">
  <li class="a"><a href="/unlogin/Top"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/user/login"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/user/login"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/login"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/login"><span class="glyphicon glyphicon-user"></span>&nbsp;登录</a></li>
  <li class="g"><a href="/user/zhuce"><span class="glyphicon glyphicon-paperclip"></span>&nbsp;注册</a></li>
</ul>
<a href="/unlogin/Top"><img class="pic" src="/img/delete.jpg" width='25px' height='25px'></img></a>
<div class="cc">
  <div class="title">
    <ul>
      <li><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;搜索结果</li>
    </ul>
  </div>
  <div class="menu" style="height:100%;background-image:url('${basePath } /img/news.jpg')">
    
    
    <ul>
    <c:forEach var="b" items="${news4 }">
      <img class='news' src="/img/news.jpg" width="15px"  height='15px'></img>
      <li class="new"><a class='color' href="/unlogin/Top1?id=${b.newsid }">${b.title }</a></li></br></br>
 
	</c:forEach>
</ul>
   
  </div>
</div>
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