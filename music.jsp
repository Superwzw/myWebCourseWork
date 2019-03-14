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
﻿<!DOCTYPE HTML>
<html>
<head>
    <meta content="text/html;charset=utf-8">
    <title>InMusic</title>
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
      height: 1100px;
      margin: 10px auto;
    }
    .col1{
      width: 650px;
      float: left;
      margin-left: 20px;
      background-color: rgb(50,2,3);
    }
    .col2{
      width: 320px;
      margin-left: 670px;
      padding-top: 2px;
      background-color: rgb(1,2,100);
    }
    .footer{
      width: 998px;
      margin:auto;
      padding-top: 2px;
    }
    #write{
      width: 640px;
      height: 290px;
      margin: 5px auto;
    }
    #w2{
      width: 640px;
      height: 290px;
    }
    #w3{
      width: 640px;
    }
    #info{
      width: 310px;
      height: 140px;
      margin: 20px auto;
      padding-top: 2px;
    }
    #m0{
        width: 310px;
        margin: auto;
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
 <a href="music.jsp"><span class="sp" id="tag3">MUSIC</span></a>
 <a href="comic.jsp"><span class="sp" id="tag4">COMIC</span></a>
 <a href="Tech.jsp"><span class="sp" id="tag5">TECH</span></a>
 <a href="movie.jsp"><span class="sp" id="tag6">MOVIE</span></a>
 <a href="study.jsp"><span class="sp" id="tag7">STUDY</span></a>
 <a href="health.jsp"><span class="sp" id="tag8">HEALTH</span></a>
 <a href="blog.jsp"><span class="sp" id="tag9">BLOG</span></a>
 <a href="login.jsp"><span class="sp" id="tag10">LOGIN</span></a>
 <a href="register.jsp"><span class="sp" id="tag11">REGISTER</span></a>
</div>

<!--Block-->
<!--Write,Myinfo,Myblog-->
      <div class="blockmain">
      <div class="col1">
        <div id="new1" style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">Kris's English single "B.M." MV is online today</div>
        <div class="row1" id="write" style="background-image:url(images/musicKris.jpg);background-size:640px 300px;
            background-repeat:no-repeat;"></div>
        <div class="row1" id="w2" style="background-image:url(images/musicK1.jpg);background-size:640px 300px;
              background-repeat:no-repeat;"></div>
        <div class="row1" id="w3" style="color:white;">
          <p>　　Kris's English single "B.M." MV is online today. The MV was directed by the famous photographer at Cong YU CONG. It set up three young creative visual teams in London, Beijing and Shanghai. It created a unique and strong visual impact, which perfectly highlighted Kris's distinctive style and distinctive fashion attitude.</p>
          <p>　　"BM" MV broke the conventional idiomatic way of narrating. Instead, it abstract the visual characteristics and rhythm of the song itself and reconstruct the structure through three visual contexts. The use of video tapes that represent the MV traits of the 90s, There are currently the most popular 3D visual effects to participate in the construction, the visual perception of different times to slice and transform, not only the response to the current fashion trends, but also a unique way of visual examination of the times. In the perfect fusion with the music at the same time, strive to show a unique and innovative visual experience.</p>
          <p>　　The single "B.M." is Kris who is inspired by his own fashion insights. His lyrics are elegant and High Fashion-centered, presenting Kris's attitude towards life. Today's exposure of the MV through the abstract visual effects, once again highlighting his extraordinary temperament, the overall style of avant-garde bold, and Kris "to create do not follow," the trend of coincide.</p>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
        <a href="https://y.qq.com/n/yqq/album/004Qdr3s4TUxkj.html#stat=y_new.album_lib.album_pic"><div class="row1" id="info" style="background-image:url(images/music2.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="https://y.qq.com/n/yqq/song/002HuRZ4120Ght.html"><div class="row1" id="info" style="background-image:url(images/music3.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="https://y.qq.com/n/yqq/album/001L7UIu3GXVtT.html#stat=y_new.song.header.albumname"><div class="row1" id="info" style="background-image:url(images/musicX.png);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
        <a href="https://y.qq.com/n/yqq/album/000PoAIO2Vp4og.html#stat=y_new.album_lib.album_pic"><div class="row1" id="info" style="background-image:url(images/musicXs.jpg);background-size:310px 140px;
            background-repeat:no-repeat;"></div>
        <a href="https://y.qq.com/n/yqq/album/000YIYVd2y34YG.html#stat=y_new.album_lib.album_pic"><div class="row1" id="info" style="background-image:url(images/music1.jpg);background-size:310px 140px;
                background-repeat:no-repeat;"></div>
      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH </p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
