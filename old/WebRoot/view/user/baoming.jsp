
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
.menu {
    list-style-type: none;
    margin-top: 0px;
    margin-right: 5px;
    border-radius: 5px;
    padding: 0;
    float: left;
    width: 195px;
    height:900px;
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
#pic{

  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}
#pic:hover{
	opacity: 0.7;
}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}

@keyframes zoom {
    from {transform: scale(0.1)} 
    to {transform: scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}
.title2 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 880px;
    float: left;
    margin-top: 5px;
}
.title2 li {
    padding: 10px;
    margin-bottom: 2px;
    background-color:#396e5e;
    color: white;
    box-shadow: 5px 5px 5px #888888;
    
}
.menu1 ul {
    list-style-type: none;
    margin: 0;
    padding: 6px;
    width: 880px;
    float: left;
}
.menu1 li {
    padding: 13px;
    color: #5c5b5b;
    
}
.menu1 li:hover {
    color:black ;
}
.menu6{
    color:white;
    padding: 6px;
}
.picc{
	float: left;
  margin-top: 200px; 
}
.news{
  float: left;
  margin: 14px;
}
.more{
	padding-left: 1000px;
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
<div style="width: 1083px;margin:0px auto;background-image:url('${basePath } /img/logo.jpg')">
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
  <li class="menu1"><a class="active" href="/bao/mygame"><span class="glyphicon glyphicon-tree-conifer"></span>&nbsp;我的比赛</a></li>
  <li class="menu6">&nbsp;类别-----</li>
  <li class="menu2"><a href="/bao/si"><span class="glyphicon glyphicon-plane"></span>&nbsp;思想引领</a></li>
  <li class="menu3"><a href="/bao/xue"><span class="glyphicon glyphicon-plane"></span>&nbsp;学术科技</a></li>
  <li class="menu4"><a href="/bao/ti"><span class="glyphicon glyphicon-plane"></span>&nbsp;体育竞技</a></li>
  <li class="menu5"><a href="/bao/xing"><span class="glyphicon glyphicon-plane"></span>&nbsp;兴趣爱好</a></li>
  </div>
</ul>
<img id="pic" src="/img/testt.jpg" width='880px' height='380px'></img>
<div id="myModal" class="modal">
  <span class="close">×</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

<script>
// 获取模态窗口
var modal = document.getElementById("myModal");

// 获取图片模态框，alt 属性作为图片弹出中文本描述
var img = document.getElementById("pic");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    modalImg.alt = this.alt;
    captionText.innerHTML = this.alt;
}

// 获取 <span> 元素，设置关闭模态框按钮
var span = document.getElementsByClassName("close")[0];

// 点击 <span> 元素上的 (x), 关闭模态框
span.onclick = function() { 
    modal.style.display = "none";
}
</script>

<div class="title2">
  <ul>
    <li><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;赛事动态</li>
  </ul>
</div>
<div class="menu1">
  <ul>
<c:forEach var="b" items="${news2 }">
      <img class='news' src="/img/news.jpg" width="15px"  height='15px'></img>
      <li class="new"><a class='color' href="/user/Topp1?id=${b.newsid }">${b.title }</a></li></br></br>
</c:forEach>
  </ul>
</div>
<div style="background-image:url('${basePath } /img/linee.jpg')">
<img class="picc" src="/img/linee.jpg" width="1100px"  height='10px'></img>
</div>
<div class="footer">
  	<p>赞助招商</br>SEEKING FOR SPONSORS</p>
    </br></br>
</div>
</div>
</body>
</html>
