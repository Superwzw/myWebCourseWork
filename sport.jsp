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
    <title>InSport</title>
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
      height: 800px;
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
        <div id="new1" style="color:rgb(255,255,255);font-size:120%;text-align:center;font-family:华文新魏">UFC kicking and punching its way into nascent Chinese market</div>
        <div class="row1" id="write" style="background-image:url(images/sp0.jpg);background-size:640px 300px;
            background-repeat:no-repeat;"></div>
        <div class="row1" id="w3" style="color:white;">
          <p>　　Probably the simplest way to look at the Ultimate Fighting Championship’s foray into China is to say it’s a search for the Chinese Conor McGregor.</p>
          <p>　　But the mixed martial arts (MMA) fight promoter plans to go beyond one octagon star.</p>
          <p>　　UFC is steadily building its mainland market, which got off to a rousing debut on Nov 25 with “Shanghai Fight Night”. More than 15,000 jammed the Mercedes-Benz Arena to cheer six male and two female Chinese fighters.</p>
          <p>　　“To be able to fight in my own country feels amazing,” Li said. “Hearing so many fans cheering for you just makes you feel so excited during the fight.”
Shanghai was the setting for another MMA event, in September, produced by UFC’s Asian rival, One Championship.</p>
          <p>　　UFC has a fan base of around 40 million in China and is the third-most followed sporting account on WeChat, behind only the NBA and Manchester United of the UK’s Premier League, Chang said.</p>
          <p>　　“Saturday’s event was almost sold out, so I think that’s an indication of just how far we have come,” said Chang. “We have also reached several milestones, such as surpassing 100 million video views on internet streaming channels. We’ve definitely risen in prominence in this market.”</p>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
        <a href="http://www.chinadaily.com.cn/a/201712/08/WS5a2a7d84a310eefe3e99ef65.html"><div class="row1" id="info" style="background-image:url(images/sp1.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://www.chinadaily.com.cn/a/201712/08/WS5a29f7e1a3101a51ddf8dfe0.html"><div class="row1" id="info" style="background-image:url(images/sp2.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://www.chinadaily.com.cn/m/jiangsu/wuxi/2017-12/07/content_35253303.htm"><div class="row1" id="info" style="background-image:url(images/sp3.jpg);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
        <a href="http://www.chinadaily.com.cn/sports/2017-12/06/content_35227182.htm"><div class="row1" id="info" style="background-image:url(images/sp4.jpg);background-size:310px 140px;
            background-repeat:no-repeat;"></div>
      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH .</p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
