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
    <title>InComic</title>
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
      height: 900px;
      margin: 10px auto;
    }
    .col1{
      width: 650px;
      float: left;
      margin-left: 20px;
    }
    .col2{
      width: 320px;
      margin-left: 670px;
      padding-top: 2px;
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
    .gra1{
      float: left;
      height: 280px;
      width: 300px;
    }
  /*jia*/
  .row1:hover,.gra1:hover{
      transform: scale(1.05);
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
        <a href="http://ac.qq.com/Comic/comicInfo/id/519855" ><div class="row1" id="write" style="background-image:url(images/mo0.jpg);background-size:640px 300px;
            background-repeat:no-repeat;"></div></a>
        <div class="row1" id="w2" style="background-size:640px 300px;background-repeat:no-repeat;">
              <a href="http://comic.qq.com/a/20171206/023679.htm"><div class="gra1" style="float:left;background-image:url(images/mo1.jpg);background-size:300px 300px;
                  background-repeat:no-repeat;"></div></a>
              <a href="http://comic.qq.com/a/20171206/023679.htm"><div style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏"><br>2017腾讯动漫创作者大会 “脱贫致富”助国漫创作者增值 </div></a>
              <div style="color:rgb(150,150,150);font-size:100%;text-align:center;font-family:华文新魏"><br>
                12月6日，以“脱贫致富”为主题的2017年腾讯动漫创作者大会于杭州召开。本次大会由国内最大的原创及正版网络动漫平台腾讯动漫组织，包括320位漫画作者和动画工作室成员在内的近500人出席会议，是2017年中国动漫创作者规模最大的一次聚会。</div>
              <!-- 第一条资讯 -->
        </div>
        <div class="row1" id="w3" style="color:white;">
          <a href="http://comic.qq.com/a/20160617/050619.htm"><div class="gra1" style="float:left;background-image:url(images/co1.jpg);background-size:300px 300px;
              background-repeat:no-repeat;"></div></a>
          <a href="http://comic.qq.com/a/20160617/050619.htm"><div style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏"><br>少女柴刀下的杀意与希望——同人三大奇迹《寒蝉》</div></a>
          <div style="color:rgb(150,150,150);font-size:100%;text-align:center;font-family:华文新魏"><br>
            三次元中的时间，永远都在无情地流逝。不管我们怎样呼唤它，它都只是头也不回的强拉着我们离开曾经的岁月。而我们只能回头遥望记忆的长河，看着静谧的月光投在水面上，映照出点点滴滴，只能欣赏却无法触摸的美好回忆。
          </div>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
        <a href="http://ac.qq.com/Comic/comicInfo/id/505430"><div class="row1" id="info" style="background-image:url(images/co2.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://ac.qq.com/Comic/comicInfo/id/505432"><div class="row1" id="info" style="background-image:url(images/co3.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://ac.qq.com/Comic/comicInfo/id/530988"><div class="row1" id="info" style="background-image:url(images/co4.jpg);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
        <a href="http://ac.qq.com/Comic/comicInfo/id/530987"><div class="row1" id="info" style="background-image:url(images/co5.jpg);background-size:310px 140px;
            background-repeat:no-repeat;"></div>
        <a href="http://ac.qq.com/Comic/comicInfo/id/505436"><div class="row1" id="info" style="background-image:url(images/co6.jpg);background-size:310px 140px;
                background-repeat:no-repeat;"></div>
      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH .</p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
