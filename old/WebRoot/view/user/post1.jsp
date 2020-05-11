
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
#customers
{
  width:1065px;
  margin-top: 80px;
  border-collapse:collapse;
  
}
#customers td
{
  font-size:1em;
  border:1px solid #98bf21;
  padding-left: 140px;
  padding-top: 20px;
  border: none;
}
.tie{
	color:black;
}
.name{
  text-align: center;
}
.text{
  margin-top:20px;
  margin-left:200px;
  margin-right:200px;
}
.biaoti{
  margin-left:50px;
  }
.zhengwen{
  margin-top:20px;
  margin-left:50px;
}
.pic{
	margin-top: 20px;
	margin-left: 1000px;
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
<a href="/user/shequ"><img class="pic" src="/img/delete.jpg" width='25px' height='25px'></img></a>
<div class='biaoti'>标题</div>
<h4 class='name'>${shequ.title }</h4>
<div class='zhengwen'>正文</div>
<pre class='text'>　为迎接新中国成立70周年，庆祝陈云诞辰114周年，6月11号上午，山东政法学院与陈云纪念馆在学校图书馆联合举
办“不忘初心、牢记使命——陈云与党风廉政建设”专题展，旨在深入学习和广泛宣传陈云关于党风廉政建设的思想与
实践经验，展示陈云在党风廉政建设中的崇高品德和伟大风范，让老一辈无产阶级革命家的党风廉政建设思想和实践
在山政师生中传播得更深更广，以史为鉴，以人为本，不忘初心，牢记使命，为实现“两个一百年”奋斗目标，实现
中华民族伟大复兴的中国梦而不懈奋斗。陈云纪念馆党委书记、馆长陈麟辉，山东政法学院宣传统战部部长林爽，
图书馆书记、馆长张建波，各二级学院党总支书记，陈云纪念馆部分代表及我校部分学生参加活动，山东政法学
院商学院院长董守海主持开幕仪式。
</pre> 
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
