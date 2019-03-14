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
    <title>InBlogging</title>
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
      height: 310px;
      margin: 10px auto;
      /*border: 1px solid white;*/
    }
    .col1{
      width: 650px;
      height: 300px;
      float: left;
      margin-left: 20px;
    }
    .col2{
      width: 320px;
      height: 300px;
      margin-left: 665px;
      padding-top: 2px;
    }
    #write{
      width: 640px;
      height: 290px;
      margin: 5px auto;
    }
    #info{
      width: 310px;
      height: 140px;
      margin: 3px auto;
      padding-top: 5px;
    }
    #mine{
      width: 310px;
      height: 140px;
      margin: auto;
      padding-top: 5px;
    }
    .block2main{
      width: 998px;
      margin: 0 auto;
    }
    .main1{
      width: 310px;
      height: 920px;
      float: left;
      margin-top: 5px;
      margin-left: 28px;
    }
    .main3{
      width: 310px;
      height: 920px;
      float: right;
      margin-top: 5px;
      margin-right: 28px;
    }
    .main2{
      width: 310px;
      height: 920px;
      margin: 5px auto;
      float: none;
      padding-top: 5px;
    }
    .module{
      width: 310px;
      height: 300px;
      color: white;
      margin-top: 5px;
    }
    .col1:hover{
      opacity: 0.7;
			transform: scale(1.1);
			border: 1px solid white;
    }
    #mine:hover{
      opacity: 0.7;
			transform: scale(1.1);
			border: 1px solid white;
    }
    #info:hover{
      opacity: 0.7;
			transform: scale(1.1);
			border: 1px solid white;
    }
    .module:hover{
      opacity: 0.7;
			transform: scale(1.1);
			border: 1px solid white;
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
        <a href="write.jsp"><div class="row1" id="write" style="background-image:url(images/write.jpg);background-size:640px 300px;
          background-repeat:no-repeat;"></div></a>
      </div>
      <div class="col2">
        <a href="myinfo.jsp"><div class="row1" id="info" style="background-image:url(images/info.jpg);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
        <a href="myblog.jsp"><div class="row2" id="mine" style="background-image:url(images/mine.jpg);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
      </div>
    </div>
<!--Write,Myinfo,Myblog end-->

<!--9 module Recommend-->
      <div class="block2main">
        <div class="main1">
          <a href="comic.jsp"><div class="module" style="background-image:url(images/comic.jpg);background-size:310px 300px;"></div></a>
          <a href="Tech.jsp"><div class="module" style="background-image:url(images/technology.jpg);background-size:310px 300px;"></div></a>
          <a href="movie.jsp"><div class="module" style="background-image:url(images/movies.jpg);background-size:310px 300px;"></div></a>
        </div>
        <div class="main3">
          <a href="study.jsp"><div class="module" style="background-image:url(images/study.jpg);background-size:310px 300px;"></div></a>
          <a href="health.jsp"><div class="module" style="background-image:url(images/heath.jpg);background-size:310px 300px;"></div></a>
          <a href="toy.jsp"><div class="module" style="background-image:url(images/toy.jpg);background-size:310px 300px;"></div></a>
        </div>
        <div class="main2">
          <a href="sport.jsp"><div class="module" style="background-image:url(images/sport.jpg);background-size:310px 300px;"></div></a>
          <a href="music.jsp"><div class="module" style="background-image:url(images/music.jpg);background-size:310px 300px;"></div></a>
          <a href="animal.jsp"><div class="module" style="background-image:url(images/animal.jpg);background-size:310px 300px;"></div></a>
        </div>
        <div class="clear"></div>
      </div>
<!--9 module Recommend end-->

</html>
