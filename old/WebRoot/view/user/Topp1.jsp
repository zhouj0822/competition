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

.a{
  background-color:#5c5b5b;
}
.kong{
  padding-left: 563.5px;
  color: #383535;
}
.picc{
  float: left;
  margin-top: 200px; 
  margin-left: 200px;  
}
.pic{
  margin-top: 20px;
  margin-left: 1000px;
}
</style>
<link rel="stylesheet" type="text/css" href="http://r.530p.com/static/main.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
</head>
<body>
<div style="width: 1083px;margin:0px auto;background-image:url('${basePath } /img/logo.jpg')">
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
<a href="/user/Topp"><img class="pic" src="/img/delete.jpg" width='25px' height='25px'></img></a>
<div id="cps_title"><h1>青春昂扬 谁与争锋</h1></div>

<div id="cp_content">
            　　雄壮嘹亮的号角吹响，英姿飒爽的健儿们活跃在赛场中央。为了丰富孩子们的业余生活，增强班级凝聚力，彰显积极进取、顽强拼搏的体育精神，佛山市实验学校六年级开展了篮球联赛。</br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动开展三个多月来，各班经过一次又一次的激烈角逐，奋力拼搏，2018年1月24日，在体育馆二楼举行了最激烈的比赛——总决赛。本次活动得到了学校领导、
            老师、家长、孩子们的高度重视，华想平副校长、梁巧顺副校长、王永泉主任、邓帆主任亲临现场指导，为孩子加油助威。</br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                比赛一开始，篮球健儿们采取主动出击，以矫健熟练的动作迅速传球，直逼篮板。双方队员都迅速进入状态，个个雄姿英发。看!他们自如地在赛场穿梭。瞧！
            他一下就抢过球，正准备投篮却被几个高个子对手挡住了去路，左躲右闪。听！我们的拉拉队员们激情飞扬，热情高涨。赛场上你争我夺、你攻我守、投球动作帅气利落。在整个比赛中，篮球宝贝们血气方刚，为了向更高的目标努力，每个队员都顽强拼搏，丝毫不放松每一次进攻机会，队员们用各式各样的篮球技巧和精准的投篮为球队争得了一分又一分。</br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                本次篮球赛不仅赛出了学生的竞技水平，更重要的是赛出了佛实学子的个性风采和团队友谊，赛出了团结合作和勇于拼搏的体育精神。</br>
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