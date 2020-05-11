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
.login{
  background-color: #396e5e;
  border: none;
  color: white;
  text-align: center;
  width:150px; 
  height: 30px;
  float: left;
  margin-bottom: 30px;
}
.log{
  float: left;
  padding-top: 50px;
  padding-left: 30px;
}
.log1{
  display: block;
  float: left;
  padding-top: 52px;
  padding-left: 500px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
#customers
{
  width:1065px;
  margin-left: 10px;
  border-collapse:collapse;
  
}
#customers td, #customers th 
{
  font-size:1em;
  border:1px solid #98bf21;
  padding:8px 7px 6px 7px;
  border: none;
}
#customers th 
{
  font-size:1.1em;
  text-align:left;
  padding-top:5px;
  padding-bottom:4px;
  background-color:#396e5e;
  color:#ffffff;
}
.tie{
	color:black;
}
.more{
	padding-left: 950px;
	padding-top:10px;
}
.logo{
  float: left;
}
.logg{
  padding: 0;
  margin-top: 35px;
  margin-left: 600px;
  float: left;
}
.logg1{
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
.logg1:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.24),0 6px 20px 0 rgba(0,0,0,0.19);
}
ul.pagination {
    display: inline-block;
    padding: 0;
    margin-top:100px;
    margin-left: 400px;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}
ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<div>
  <img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>
  <input class="logg" type="text" name='帖子标题' placeholder="输入关键词"></input>
  <input class="logg1" type='button' value='搜索'></input>
</div><br><br><br><br>
<ul class="topmenu">
  <li class="a"><a href="/user/Topp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/user/sorry"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/user/baoming"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/shequ"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/index"><span class="glyphicon glyphicon-user"></span>&nbsp;用户信息</a></li>
  <li class="f"><a href="/unlogin/Top"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
</ul>
<div class="log">
<a href="/user/post"><input class="login" type='button' value='+  发帖'></input></a>
</div>
<div class="log1">
<input type="text" name='帖子标题' placeholder="输入关键词"></input>
</div>
<div class="log">
<a href="/user/shequ"><input class="login" type='button' value='查询'></input></a>
</div>
<table id="customers">
<tr>
  <th>标题</th>
  <th>发布者</th>
  <th>发布时间</th>
</tr>

    <c:forEach var="b" items="${shequ }">
      
     
      
	


	
	
<tr>	
<td><a class="tie" href="/user/post1?id=${b.id }">${b.title }</a></td>
<td>${b.userid }</td>
<td>${b.xtm }</td>

</c:forEach>

</table>
<ul class="pagination">
  <li><a href="#">«</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">»</a></li>
</ul>
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
