<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
<%
  String username = (String)session.getAttribute("user");
	if(username == null){
		username = "you can login or register first!";
	}
  String welcome = "Hello, " + username + " !";
  String delete = request.getParameter("delete");
  if(delete == null) delete = "";
  if(delete.equals("ok")){
    session.removeAttribute("user");
  }
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta content="text/html;charset=utf-8">
    <title>InHealth</title>
    <style>
		a{text-decoration: none;color: white;}
    a:hover{
      color: rgb(219,188,71);
    }
    body{
      background: url(images/bk1.png) repeat;
    }
    .clear {clear:both}
    #header {
        width: 998px;
        height: 108px;

        margin: 0px auto;
        position: relative;
        padding: 0px;
    }
    #nav {
    width: 998px;
    height: 45px;

    font-size: 14px;
    color: #FFF;

    margin: 0 auto;
    padding: 0px;

    font-weight: bold;
    line-height: 45px;
    text-align: center;
}
    #icon {
     bottom: 10px;
     position: absolute;
     left: 10px;
    }
    #user {
     position: absolute;
     right: 10px;
     top: 20px;
     color: white;
     font-size: 20px;
    }
    #logout{
      position: absolute;
      right: 35px;
      top: 60px;
      color: white;
      font-size: 15px;
    }
    #submitS {
     vertical-align: middle;
     width: 74px;
     height: 25px;
     background-color: white;
     border: 0;
     margin: 0px 0px 0px 5px;
     cursor: pointer;
     padding: 0px;
    }
    #nav a:active, #nav a:link, #nav a:visited {
        color: #FFF;
        text-decoration: none;
    }

    #nav .home {
        padding: 8px 10px 5px 15px;
        margin: 0px;
        background: url(images/homeicon.png) center no-repeat;
    }

    #nav .sp {
        padding: 10px 12px 10px 17px;
    }
    #nav .sp:hover {background-color: rgba(200,200,200,0.2); color:#005;}
    .blockmain{
      width: 998px;
      height: 780px;
      margin: 10px auto;
      /*border: 1px solid white;*/
    }
    .col1{
      width: 650px;
      float: left;
      margin-left: 20px;
      /*border: 1px solid white;*/
    }
    .col2{
      width: 320px;
      margin-left: 670px;
      padding-top: 2px;
      /*border: 1px solid white;*/
    }
    .footer{
      width: 998px;
      margin:auto;
      padding-top: 2px;
      /*border: 1px solid white;*/
    }
    #write{
      width: 640px;
      height: 290px;
      margin: 5px auto;
      /*border: 1px solid white;*/
    }
    #w2{
      width: 640px;
      height: 290px;
      /*border: 1px solid white;*/
    }
    #w3{
      width: 640px;
      /*border: 1px solid white;*/
    }
    #info{
      width: 310px;
      height: 140px;
      margin: 20px auto;
      padding-top: 2px;
      /*border: 1px solid white;*/
    }
    #m0{
        width: 310px;
        margin: auto;
        /*border: 1px solid white;*/
    }
    #info:hover{
      transform: scale(1.1);
    }
    </style>
</head>
<!--Header-->
<div id="header">
  <div id="icon">
    <img src="images/icon.png">
  </div>
  <div id="user">
    <p><%=welcome%></p>
  </div>
  <div id="logout">
    <a href="<%=username.equals("you can login or register first!")?"register.jsp":"pro.jsp"%>?delete=ok">
    <p><%=username.equals("you can login or register first!")?"Do not have Account?Go Registration!":"Log out"%></p></a>
  </div>
</div>
<!--Guide-->
<div id="nav">
 <a href="pro.jsp"><span class="home"></span></a>
 <a href="pro.jsp"><span class="sp" id="tag2">HOME</span></a>
 <a href="music.jsp" target="_blank"><span class="sp" id="tag3">MUSIC</span></a>
 <a href="comic.jsp"><span class="sp" id="tag4">COMIC</span></a>
 <a href="Tech.jsp"><span class="sp" id="tag5">TECH</span></a>
 <a href="movie.jsp"><span class="sp" id="tag6">MOVIE</span></a>
 <a href="study.jsp"><span class="sp" id="tag7">STUDY</span></a>
 <a href="health.jsp"><span class="sp" id="tag8">HEALTH</span></a>
 <a href="blog.jsp"><span class="sp" id="tag9">BLOG</span></a>
 <a href="login.jsp"><span class="sp" id="tag10">LOGIN</span></a>
 <a href="register.jsp" target="_blank"><span class="sp" id="tag11">REGISTER</span></a>
</div>

<!--Block-->
<!--Write,Myinfo,Myblog-->
      <div class="blockmain">
      <div class="col1">
        <div id="new1" style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">Kris's English single "B.M." MV is online today</div>
        <div class="row1" id="w2" style="background-image:url(images/hea2.jpg);background-size:640px 300px;
              background-repeat:no-repeat;"></div>
        <div class="row1" id="w3" style="color:white;">
          <p>　　BEIJING — China's consumer inflation slowed more than expected to grow 1.7 percent in November driven by falling food prices, the National Bureau of Statistics (NBS) said Saturday.</p>
          <p>　　The consumer price index (CPI), a main gauge of inflation, rose 1.7 percent year-on-year in November, down from October's 1.9 percent, and missing market forecast of 1.8 percent.</p>
          <p>　　Food prices fell 1.1 percent in November year-on-year, 0.7 percentage points more than the decline registered in October. Pork prices slumped 9 percent, dragging down the CPI growth by 0.25 percentage point.</p>
          <p>　　Compared with a month ago, factory-gate prices gained faster in oil and natural gas developers and ferrous metal producers. Costs increased at slower pace in oil processing and chemical producing industries, NBS senior statistician Sheng Guoqing noted.</p>
          <p>　　Compared with a year ago, raw materials costs rose 7.5 percent, 1.5 percentage point down from that recorded in October.</p>
          <p>　　The PPI figures came alongside the release of the consumer price index, which rose 1.7 percent year-on-year in November, down from October's 1.9 percent, and missing market forecast of 1.8 percent.</p>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
            <a href="http://www.chinadaily.com.cn/a/201712/08/WS5a2a0a19a3101a51ddf8e5c3.html"><div class="row1" id="info" style="background-image:url(images/hea4.jpg);background-size:310px 140px;
              background-repeat:no-repeat;"></div></a>
            <a href="http://www.tingvoa.com/s/VOA-Special-English-Health-Report/"><div class="row1" id="info" style="background-image:url(images/hea6.jpg);background-size:310px 140px;
                background-repeat:no-repeat;"></div></a>
            <a href="http://www.chinadaily.com.cn/a/201712/09/WS5a2b2e03a310eefe3e99f021.html"><div class="row1" id="info" style="background-image:url(images/hea1.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div></a>
            <a href="http://www.chinadaily.com.cn/m/guangxi/hechi/2017-12/08/content_35262167.htm"><div class="row1" id="info" style="background-image:url(images/hea3.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div></a>

      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH </p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
