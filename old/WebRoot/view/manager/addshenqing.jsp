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
<title>mainstyle</title> 
<style>
* {
    box-sizing: border-box;
}

.footer {
  list-style-type: none;
  overflow: hidden;
    color: black;
    padding: 15px;
    width: 100%;
    height: 50px;
   text-align: center;
   background-color: white;
}

.topmenu {
     list-style-type: none;
    margin-top: 5px;
    margin-bottom: 10px;
    padding: 0;
    overflow: hidden;
    background-color:#383535;
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
}
.topmenu li a.active {
    color: black;
    background-color: white;
}
.leftmenu {
    list-style-type: none;
    margin-top: 5px;
    margin-left: 5px;
    padding:5px;
    width: 150px;
    height: 650px;
    float: left;
    font-size:15px;
    box-shadow: 5px 5px 5px #888888;
    
}
 
.leftmenu li a {
    display:block;
    color:black;
    padding: 8px 16px;
    height: 60px;
    text-decoration: none;

}
 
/* 鼠标移动到选项上修改背景颜色 */
.leftmenu li a:hover {
    background-color: #5c5b5b;
    color: white;
    height: 60px;
}
.content1{
  margin-left:300px; 
  margin-top: 30px;
  width:300px;
  height:190px;
  text-align: center;
  background-color: white;
}
.content1 label{
  width:110px;
  height: 50px;
  float:left;
}

<style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div style="width: 1083px;margin:0px auto;">
<div>
  <img class='logo' src="/img/logo.jpg" width='210px' height='70px'></img>&nbsp;
  <input style="margin-left:600px" type="text" name='帖子标题' placeholder="输入关键词"></input>
  <input type='button' value='搜索'></input>
</div><br>
<ul class="topmenu">
  <li><a href="#home"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li><a href="/manager/top"  class="active"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li><a href="/manager/sorry"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li><a href="/manager/shequ"><span class="glyphicon glyphicon-bell">&nbsp;</span>社区</a></li>
  <a href="/unlogin/Top">
    <span class="glyphicon glyphicon-log-out" style="float: right;margin-top: 13px;margin-right:20px;color: white;">退出</span>
    </a>
   
   <div style="float: right;margin-top: 13px;margin-right:20px;background-color: black;color: white;">你所在的位置：申请比赛场地</div>
  <a href="/user/index">
      <span class="glyphicon glyphicon-user" style="float: right;margin-top: 13px;margin-right:20px;color: white;">&nbsp;我</span>
    </a>
   
    <div style="float: right;margin-top: 13px;margin-right:20px;background-color: black;color: white;">欢迎你！</div>
</ul>

<ul class="leftmenu">

  <li><a href="/news/add" target="_black">发布新闻</a><br>
  <li><a href="/manager/addzhidao" target="_black">发布比赛指导信息</a></li><br><br></li>
  <li><a href="/manager/addgame" target="_black">比赛信息管理</a></li></li>
  <li><a href="/manager/addshenqing" target="_black"><br>申请比赛场地</a></li><br><br>
  
  <li><a href="/manager/shequ" target="_black">社区管理</a></li><br>
  <li><br><br></li>
</ul>
<div>
 <form action="" method="post" enctype="multipart/form-data" name="input" >
    <div class="content1"><label>比赛日期&nbsp;<span class="glyphicon glyphicon-calendar"></span></label>
   <input type="date" name="tm" id="tm" value="${shenqing.place }"style="float:left;">
    </div>
    
    <div class="content1" ><label>比赛地点&nbsp;<span class="glyphicon glyphicon-map-marker"></span></label>
    <select class='text' name="place" id="place" value="${shenqing.place }"  style="float:left;"  >
        <script>
         var  Sel=document.getElementById("citySel");
         var index=Sel.selectedIndex ;             // selectedIndex是所选中的项的index
         myselect.options[index].value;
         myselect.options[index].text;
        </script>
		<option value='礼堂'>礼堂</option>
		<option value='大学生素质拓展中心'>大学生素质拓展中心</option>
		<option value='至善楼602'>至善楼602</option></select></div>
   <br><br>
    <div style="margin-left:400px;"><input type="submit" value="提交" ></div>

<script>
function myFunction(){
  var x;
  var r=confirm("确认提交!");
  if (r==true){
    x="你按下了\"确定\"按钮!";
  }
  else{
    x="你按下了\"返回\"按钮!";
  }
  return r;
}
</script>
</form>

<div class="footer">
  <p>${unsuccess}</p>
  
</div>

</div>
</body>
</html>