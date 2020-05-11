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

.f{
	background-color:#5c5b5b;
}
.kong{
  padding-left: 563.5px;
  color: #383535;
}
.picc{
	float: left;
  margin-top: 200px; 
  margin-left: 250px;
}
.aa{
  padding-top: 100px; 
  padding-left: 300px;
}
.bb{
  padding-top: 35px; 
  padding-left: 300px;
  float: left;
}
.bbb{
  padding-top: 35px; 
  padding-left: 300px;
  padding-right: 150px;
}
.gender{
  float: left; 
  margin-top: 35px;
  margin-left: 5px;
}
.login{
  background-color: #396e5e;
  border: none;
  color: white;
  text-align: center;
  width:70px; 
  height: 25px;
  float: left;
  margin-top: 80px;
  margin-left: 400px;
}
.loginn{
  background-color: #396e5e;
  border: none;
  color: white;
  text-align: center;
  width:70px; 
  height: 25px;
  float: left;
  margin-left: 20px;
  margin-top: 80px;
}
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>
<ul class="topmenu">
  <li class="a"><a href="/user/Topp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li class="c"><a href="/user/sorry"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li class="d"><a href="/user/baoming"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li class="b"><a href="/user/shequ"><span class="glyphicon glyphicon-bell"></span>&nbsp;社区</a></li>
  <li class="kong">a</li>
  <li class="f"><a href="/user/index"><span class="glyphicon glyphicon-user"></span>&nbsp;用户信息</a></li>
  <li class="f"><a href="/unlogin/Top"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
</ul>
 <form action="" method="post">

     <div class='aa'>姓名</div>
      <input type="text" name="name" value="${mmm.name }">
      </div>
    <div class='bb'>性别</div>
    <input type="text"class='text' name="sex" value="${mmm.sex }">
       


 <div class='bbb'>学院
    <select class='aaa' name="academy" value="${mmm.academy }">
     <script>
         var  Sel=document.getElementById("citySel");
         var index=Sel.selectedIndex ;             // selectedIndex是所选中的项的index
         myselect.options[index].value;
         myselect.options[index].text;
        </script>
		<option value='网络空间安全学院'>网络空间安全学院</option>
		<option value='刑事司法学院'>刑事司法学院</option>
		<option value='民商法学院'>民商法学院</option>
		<option value='经济贸易法学院'>经济贸易法学院</option>
		<option value='法学院'>法学院</option>
		<option value='传媒学院'>传媒学院</option>
		<option value='外国语学院'>外国语学院</option>
		<option value='公共管理学院'>公共管理学院</option>
		<option value='警官学院'>警官学院</option>
		<option value='商学院'>商学院</option>
	</select>
    </div>
<div class='bbb'>班级
 <input type="text" name="grade" value="${mmm.grade }">
  </div>

<div class='bbb'>新密码
 <input type="text" name="password" value="${mmm.password }">
 </div>
   <div><input class="login" type='submit' value='确认更改' onclick="myFunction()"></input></div>
    <div><a href="/user/Topp"><input class="loginn" type='button' value='返回首页'></input></a></div>
</form>
<script>
function myFunction(){
  alert("确认保存更改信息？");
}
</script>
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