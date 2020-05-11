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
    margin-top:0;
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
  padding-left: 561.5px;
  color: #383535;
}
.picc{
	float: left;
  margin-top: 200px; 
}
.menu1{
  background-color: #555;
  color: white;
}
.menu {
    list-style-type: none;
    margin: 0;
    padding: 5px;
    float: left;
    width: 18%;
    height:1000px;
    background-color: #f1f1f1;
}

.menumenu li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

.menumenu li a:hover {
    background-color: #555;
    color: white;
}
.log1 {
  list-style-type: none;
  color: black;
  width: 250px;
  height:30px; 

}
.log{
  padding-top: 150px;
  padding-left:570px; 
}
.login{
  background-color: #4CAF50;
  border: none;
  color: white;
  text-align: center;
  width:100px; 
  height: 30px;
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
.de{
  margin-top: 30px;
  margin-left: 800px;
}
.menu6{
    color:white;
    padding: 6px;
}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<img class='logo' src='图片\logo.jpg' width='210px' height='70px'></img>
<ul class="topmenu">
  <li class="a"><a href="/user/Topp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/manager/top"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/user/baoming"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/shequ"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/index"><span class="glyphicon glyphicon-user"></span>&nbsp;用户信息</a></li>
  <li class="f"><a href="/unlogin/Top"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
</ul>
<ul class="menu">
  <div class="menumenu">
  <li class="menu1"><a class="active" href="我的比赛.html"><span class="glyphicon glyphicon-tree-conifer"></span>&nbsp;我的比赛</a></li>
  <li class="menu6">&nbsp;类别-----</li>
  <li class="menu2"><a href="类别.html"><span class="glyphicon glyphicon-plane"></span>&nbsp;思想引领</a></li>
  <li class="menu3"><a href="类别a.html"><span class="glyphicon glyphicon-plane"></span>&nbsp;学术科技</a></li>
  <li class="menu4"><a href="类别b.html"><span class="glyphicon glyphicon-plane"></span>&nbsp;体育竞技</a></li>
  <li class="menu5"><a href="类别c.html"><span class="glyphicon glyphicon-plane"></span>&nbsp;兴趣爱好</a></li>
  </div>
</ul>
<a href="我的比赛.html"><img class="de" src='图片\delete.jpg' width='25px' height='25px'></img></a>
<div class="log">
  <div class="log1">姓名<input type="text" name='姓名'></input>
  </div><br/>
  <div class="log1">比赛<input type="text" name='姓名'></input>
  </div><br/>
  <div class="log1">获得奖项<input type="text" name='姓名'></input>
  </div><br/><br/>
    <a href=""><input class="login" type='button' value='下载证书'></input></a>
    <a href="我的比赛.html"><input class="login" type='button' value='返回'></input></a>
</div>  
<div>
<img class="picc" src='图片\linee.jpg' width="1100px"  height='10px'></img>
</div>
<div class="footer">
  	<p>赞助招商</br>SEEKING FOR SPONSORS</p>
    </br></br>
</div>
</div>
</body>
</html>
