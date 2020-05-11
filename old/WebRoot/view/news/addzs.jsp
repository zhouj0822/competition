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
    margin-top: 15px;
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
    margin-top: 0px;
    margin-left: 25px;
    padding:5px;
    width: 150px;
    height: 650px;
    background-color:#F0F0F0;
    float: left;
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
  margin-left:200px; 
  width:300px;
  height:190px;
  text-align: center;
  background-color: white;
}
.content1 label{
  display: block;
  width:110px;
  height: 50px;
  float:left;
}
.content2{
  width:50px;
  height:30px;
  float:center;
  text-align: center;
  background-color: white;
}

</style>
<style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    right: 0;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

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
<ul class="topmenu">
  <li><a href="#home"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li><a href="/manager/top"  class="active"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li><a href="/manager/sorry"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li><a href="/manager/shequ"><span class="glyphicon glyphicon-bell">&nbsp;</span>社区</a></li>
  <a href="/unlogin/Top">
    <span class="glyphicon glyphicon-log-out" style="float: right;margin-top: 13px;margin-right:20px;color: white;">退出</span>
    </a>
  <a href="managecompetition5.html">
      <span class="glyphicon glyphicon-user" style="float: right;margin-top: 13px;margin-right:20px;color: white;">&nbsp;你所在的位置比赛结果</span>
    </a>
  <div style="float: right;margin-top: 13px;margin-right:20px;color: white;">欢迎你！</div>
</ul>
<ul class="leftmenu">

  <li><a href="/news/add" target="_black">发布新闻</a><br>
  <li><a href="/manager/addzhidao" target="_black">发布比赛指导信息</a></li><br></li>
  <li><a href="/manager/addgame" target="_black">比赛信息管理</a></li><br></li>
  <li><a href="/manager/addshenqing" target="_black"><br>申请比赛场地</a></li><br>
  
  <li><a href="/manager/shequ" target="_black">社区管理</a></li><br>
  <li><br><br></li>
</ul>
<div>
<form action="" method="post" enctype="multipart/form-data" name="input" >
    <div class="content1" ><label>证书级别:</label>
    <select class='text' name="text" value="${news.text }"  style="float:left;"  >
        <script>
         var  Sel=document.getElementById("citySel");
         var index=Sel.selectedIndex ;             // selectedIndex是所选中的项的index
         myselect.options[index].value;
         myselect.options[index].text;
        </script>
		<option value='省级'>省级</option>
		<option value='校级'>校级</option>
		<option value='班级'>班级</option>
        </select>
  </div></div>
   <div class="content1" ><label>比赛名称:</label><input type="text" name="title"></div>
   <div class="content1"><label>奖项:</label><input type="text" name="text"></input></div>
  <div class="content1"><label>&nbsp;&nbsp;证书文件:</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="path"><br><br><br>
   <input type="submit" value="发布"></button>
</div>
<script>
function myFunction(){
  var x;
  var r=confirm("确认提交!");
  if (r==true){
    x="你按下了\"确定\"按钮!";
  }
  else{
    x="你按下了\"取消\"按钮!";
  }
  return r;
}
</script>
</form>
</div>

<div class="footer">
  <div>联系电话buyaoda</div>
  
</div>
</div>
</body>
</html>