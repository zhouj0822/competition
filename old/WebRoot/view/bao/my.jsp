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

.d{
	background-color:#5c5b5b;
}
.kong{
  padding-left: 561.5px;
  color: #383535;
}
.menu1{
  background-color: #555;
  color: white;
}
.menu6{
    color:white;
    padding: 6px;
}
.menu {
    list-style-type: none;
    margin-top: 0px;
    margin-right: 5px;
    border-radius: 5px;
    padding: 0;
    float: left;
    width: 195px;
    height:1120px;
    background-color: #383535;
}

.menumenu li a {
    display: block;
    color: white;
    padding: 8px 16px;
    text-decoration: none;
}

.menumenu li a:hover {
    background-color: #5c5b5b;
    color: white;
}
.title ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 883px;
    float: left;

}
.title li {
    padding: 10px;
    margin-bottom: 5px;
    background-color :#396e5e;
    color: #ffffff;
    box-shadow: 5px 5px 5px #888888;
    
}
div.img {
    margin: 10px;
    border: 1px solid #ccc;
    float: left;
    width: 270px;
}

div.img:hover {
    border: 1px solid #777;
}


div.desc {
    padding: 15px;
    text-align: center;
}
.picc{
	float: left;
  margin-top: 200px; 
}
.more{
	float: left;
	width:100px;
	margin: 0;
	padding-top:215px;
	
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
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
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
<ul class="menu">
  <div class="menumenu">
  <li class="menu1"><a class="active" href="我的比赛.html"><span class="glyphicon glyphicon-tree-conifer"></span>&nbsp;我的比赛</a></li>
  <li class="menu6">&nbsp;类别-----</li>
   <li class="menu2"><a href="/bao/si"><span class="glyphicon glyphicon-plane"></span>&nbsp;思想引领</a></li>
  <li class="menu3"><a href="/bao/xue"><span class="glyphicon glyphicon-plane"></span>&nbsp;学术科技</a></li>
  <li class="menu4"><a href="/bao/ti"><span class="glyphicon glyphicon-plane"></span>&nbsp;体育竞技</a></li>
  <li class="menu5"><a href="/bao/xing"><span class="glyphicon glyphicon-plane"></span>&nbsp;兴趣爱好</a></li>
  </div>
</ul>
<div class="title">
  <ul>
    <li><span class="glyphicon glyphicon-cloud"></span>&nbsp;正在进行</li>
  </ul>
</div>
<div class="responsive">
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/ti1.jpg" width="270px" height="180px">
    </a>
    <div class="desc">校园吉尼斯大赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/ti2.jpg" width="270px" height="180px">
    </a>
    <div class="desc">篮球比赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/ti3.jpg" width="270px" height="180px">
    </a>
    <div class="desc">“山政杯”足球赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/ti4.jpg" width="270px" height="180px">
    </a>
    <div class="desc">乒乓球比赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/ti5.jpg" width="270px" height="180px">
    </a>
    <div class="desc">趣味篮球赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si6.jpg" width="270px" height="180px">
    </a>
    <div class="desc">“我诚信·我快乐”演讲比赛</div>
  </div>
</div>
<div class="title">
  <ul>
    <li><span class="glyphicon glyphicon-cloud"></span>&nbsp;已结束</li>
  </ul>
</div>
<div class="responsive">
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si1.jpg" alt="图片文本描述" width="270" height="180">
    </a>
    <div class="desc">思政公开课大赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si2.jpg" alt="图片文本描述" width="270" height="180">
    </a>
    <div class="desc">大学生诗文朗诵大赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si3.jpg" alt="图片文本描述" width="270" height="180">
    </a>
    <div class="desc">“红色寻根”经典诵读比赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si4.jpg" alt="图片文本描述" width="270" height="180">
    </a>
    <div class="desc">“挑战杯”模拟创业大赛</div>
  </div>
  <div class="img">
    <a target="_blank" href="已报名.html">
      <img src="/img/si5.jpg" alt="图片文本描述" width="270" height="180">
    </a>
    <div class="desc">中华诗词大赛</div>
  </div>
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
