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
<title>组织方首页</title> 
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


.content {
    display: block; /* block inline */
	height:300px;
	width:400px;
	margin-top: 20px;
	margin-left: 20px;
	text-align: center;
	line-height: 200px;
	font-size:40px;
	text-decoration: none;
	list-style-type: none;
	opacity: 0.5;
	float:left;
	color:black;
	background-color: white;

}
.content li {
    float: left;
    text-decoration: none;
}
.content li a {

    color:black;
    text-align: center;
    padding: 20px;
    text-decoration: none;
}
.content li	a.link{
	color: pink;
		}
.content li a.visited{
			color:red;
		}
.content li a:hover {
            color: blue;
}
.content li a.active{
			color:red;
		}

</style>
<style>
.leftmenu {
    list-style-type: none;
    margin-top:5px;
    margin-left:5px;
    padding:5px;
    width: 150px;
    height: 650px;
    background-color:;
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
.button {
    border: none;
    color: black;
    padding: 5px 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    cursor: pointer;
    float: right;
}

.img {
    border: 1px solid #ccc;
    float: left;
    width: 260px;
    margin:20px;
    height: 210px;
   
}

.img:hover {
    border: 1px solid #777;
    text-decoration: none;
    color: blue;
}
.img img {

    width: 100%;
    height: 130px;
}

.desc {
    padding: 10px;
    text-align: center;
    text-decoration: none;
}
.img1 {
    margin: 10px;
    float: left;
    width: 400px;
}
.img1:hover {
    text-decoration: none;
}
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}

ul.pagination li a.active {
    background-color: #4CAF50;
    color: white;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
.center {text-align: center;}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div style="width: 1083px;margin:0px auto;">

<ul class="topmenu">
  <li><a href="#home"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
  <li><a href="/manager/top"  class="active"><span class="glyphicon glyphicon-magnet"></span>&nbsp;组织方</a></li>
  <li><a href="/user/baoming"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;报名方</a></li>
  <li><a href="/manager/shequ"><span class="glyphicon glyphicon-bell">&nbsp;</span>社区</a></li>
  <a href="managecompetition5.html">
      <span class="glyphicon glyphicon-user" style="float: right;margin-top: 13px;margin-right:20px;color: white;">&nbsp;我的信息</span>
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
<div class="responsive">
  <div style="margin-left: 200px;margin-top: 30px;font-size: 17px;">我发布的比赛&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="/manager/addgame" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-plus"></span>发布新比赛</a>
<br>
 <table class="table table-bordered">
	<c:forEach var="b" items="${game }">
	<tr>
 		<td><a href="">${b.gname }</a></td>
		<td>${b.tm }</td>
		<td>${b.userid }</td>

	</tr>

	</c:forEach>
</table></div>
<div class="center">
 <ul class="pagination">
  <li><a href="#">«</a></li>
  <li><a class="active" href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">7</a></li>
  <li><a href="#">»</a></li>
 </ul>
</div>
<div class="footer">
  <div>联系电话buyaoda</div>
</div>
</div>
</body>
</html>
