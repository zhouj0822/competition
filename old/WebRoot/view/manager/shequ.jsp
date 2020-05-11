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

.content1 {
  padding: 15px;
  text-align: left;
  text-decoration: none;
  background-color: white;
}

.button {
    background-color: white;
    border: border: 0.5px solid black;
    color: black;
    padding: 6px 8px;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px 30px;
    cursor: pointer;
}
.button1{
    background-color: white;
    border: 0.5px solid black;
    color: black;
    padding:6px 8px;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 1px 50px;
    cursor: pointer;
    float: right;
}

.leftmenu {
    list-style-type: none;
    float: left;
    
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
</style>

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

  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
  <div style="float: right;margin-top: 13px;margin-right:20px;color: white;">你所在的位置：管理帖子</div>
  <a href="managecompetition5.html">
      <span class="glyphicon glyphicon-user" style="float: right;margin-top: 13px;margin-right:20px;color: white;">&nbsp;我</span>
    </a>
  <div style="float: right;margin-top: 13px;margin-right:20px;color: white;">欢迎你！</div>
</ul>
<div class="leftmenu">
  <li><a href="/news/add" target="_black">发布新闻</a><br>
  <li><a href="/manager/addzhidao" target="_black">发布比赛指导信息</a></li><br></li>
  <li><a href="/manager/addgame" target="_black">比赛信息管理</a></li><br></li>
  <li><a href="/manager/addshenqing" target="_black"><br>申请比赛场地</a></li><br>
  
  <li><a href="/manager/shequ" target="_black">社区管理</a></li><br>
</div>
<div>
<span>
  <a style="text-decoration: none;padding:1px;margin: 10px;color:black;"> <span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;帖子筛选</a>
</span>
 <span>
  <button class="button">全部</button>
  <button class="button">已审核</button>
  <button class="button">未审核</button>
</span>
</div>

<div>
  <span><a href="/user/post" class="button" style="text-decoration: none">+&nbsp;&nbsp;发帖</a></span>
  <span style="margin-left: 300px;"><input type="search"><button class="button" type="button">查询</button></span>
  <span><button class="button">默认排序</button></span>
  
</div>

<div >
   <table class="table table-striped" border="0" cellspacing="0" cellpadding="10" style="width: 900px;">

<caption></caption>

   <thead>
    <tr>
        <td>&nbsp;<span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;&nbsp;&nbsp;选择</td>
        <td><span class="glyphicon glyphicon-eye-close"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题</td>
        <td> <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发帖人</td>
        <td><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;&nbsp;发帖时间</td>
        <td><span class="glyphicon glyphicon-circle-arrow-up"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置顶</td>
        <td colspan="3"><span class="glyphicon glyphicon-cutlery"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</td>
    </tr>
  </thead>
     	<c:forEach var="p" items="${shequ }">
   <tr>
       
       <td><a style="text-decoration: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><input type="checkbox" name="vehicle" value="Bike"></td>
        <td><a href='' target="_black">${p.title}</a></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${p.userid }</td>
        <td>${p.xtm }</td>
        <td><a style="text-decoration: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><input type="checkbox" name="vehicle" value="Bike"></td>
        <td><a href="editpost?id=${p.id }" style="text-decoration: none;">编辑</a></td>
        <td><a href="del?id=${p.id }" style="text-decoration: none">删除</a></td>
        <td><a href="fabutiezipost9.html" style="text-decoration: none">审核</a></td>
    </tr>
 </c:forEach>
  </table>  

</div>
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
