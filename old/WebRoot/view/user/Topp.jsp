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
    margin-top: 0;
    margin-bottom:12px;
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
  padding-left: 563.5px;
  color: #383535;
}
.picc{
	float: left;
  margin-top: 200px; 
}
.carousel-inner{
  border-radius: 10px;
  height:380px;
}
.title ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    box-shadow: 5px 5px 5px #888888;
}
.title li {
    padding:10px;
    list-style-type: none;
    background-color :#396e5e;
    color: white;
    
}

.menu ul {
    list-style-type: none;
    margin: 0;
    padding: 5px;
}
.menu li {
    padding: 8px;
    color: #5c5b5b;
    
}
.menu li:hover {
    color: black;
}
.aa{
  float: left;
  width: 50%;
  padding-right: 10px;
  
}
.bb{
  float: left;
  width: 50%;
  
}
.cc{
  float: left;
  width: 100%;
  margin-top: 5px;
}
.new{
  float: left;
}
.news{
  float: left;
  margin: 10px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.more{
	padding-left: 1000px;
}
.more1{
	padding-left:450px;
}
.color{
	color:#5c5b5b;
	text-decoration: none;
}
.color:hover {
    color: black;
}
.logo{
  float: left;
}
.log{
  padding: 0;
  margin-top: 35px;
  margin-left: 600px;
  float: left;
}
.log1{
  float: left;
  background-color: #396e5e;
  border: none;
  color: white;
  text-align: center;
  margin-left:10px;
  margin-top: 35px;
  width: 60px;
  height: 25px;
}
.log1:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.24),0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div style="width: 1083px;margin:0px auto;background-image:url('${basePath } /img/logo.jpg')">
<div>
  <img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>
  <input class="log" type="text" name='帖子标题' placeholder="输入关键词"></input>
  <input class="log1" type='button' value='搜索'></input>
</div><br><br><br><br>
<ul class="topmenu">
  <li class="a"><a href="/user/Topp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/user/sorry"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/user/baoming"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/shequ"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/index?id=${user.userid }"><span class="glyphicon glyphicon-user"></span>&nbsp;用户信息</a></li>
  <li class="f"><a href="/unlogin/Top"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
</ul>
<div id="myCarousel" class="carousel slide">
  <!-- 轮播（Carousel）指标 -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>   
  <!-- 轮播（Carousel）项目 -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="/img/head.jpg">
    </div>
    <div class="item">
      <img src="/img/head1.jpg" width="100%">
    </div>
    <div class="item">
      <img src="/img/head2.jpg">
    </div>
  </div>
  <!-- 轮播（Carousel）导航 -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<div class="cc">
  <div class="title">
    <ul>
      <li><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;赛事公告</li>
    </ul>
  </div>
  <div class="menu">
    <ul>
    <c:forEach var="b" items="${news1 }">
      <img class='news' src="/img/news.jpg" width="15px"  height='15px'></img>
      <li class="new"><a class='color' href="/user/Topp1?id=${b.newsid }">${b.title }</a></li></br></br>
      
	


	
	
	</c:forEach>
    </ul>
  </div>
  <div class="more"><a href="/user/gonggao">更多>>></a></div>
</div>

<div class="aa"> 
  <div class="title">
    <ul>
      <li><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;赛事动态</li>
    </ul>
  </div>
  <div class="menu">
    <ul>
    <c:forEach var="b" items="${news2 }">
      <img class='news' src="/img/news.jpg" width="15px"  height='15px'></img>
      <li class="new"><a class='color' href="/unlogin/Topp1?id=${b.newsid }">${b.title }</a></li></br></br>
      
	


	
	
	</c:forEach>
    </ul>
  </div>
  <div class="more1"><a href="/user/dongtai">更多>>></a></div>
</div>

<div class="bb">
  <div class="title">
    <ul>
      <li><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;往届赛事</li>
    </ul>
  </div>
  <div class="menu">
    <ul>
    <c:forEach var="b" items="${news3 }">
      <img class='news' src="/img/news.jpg" width="15px"  height='15px'></img>
      <li class="new"><a class='color' href="/unlogin/Topp1?id=${b.newsid }">${b.title }</a></li></br></br>
      
	


	
	
	</c:forEach>
    </ul>
  </div>
  <div class="more1"><a href="/user/past">更多>>></a></div>
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
