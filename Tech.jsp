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
    <title>TECHNOLOGY</title>
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
      height: 1100px;
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
  </div>>
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
        <div id="new1" style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">North Korea once again test ballistic missiles</div>
        <div class="row1" id="write" style="background-image:url(images/tec5.jpg);background-size:640px 300px;
            background-repeat:no-repeat;"></div>
        <div class="row1" id="w3" style="color:white;text-indent=2em;">
          <p>　　The digital-age marriage of business with high-tech is helping improve services in China's healthcare sector. A shining example is the Anhui Provincial Hospital of Central China.</p>
          <p>　　Doctors there are well served by a smart, well-qualified assistant. 'She' records patients' symptoms, reviews computerized tomography scan images and makes initial diagnosis. Only, she is not human but a robot that runs on artificial intelligence.</p>
          <p>　　Developed by iFlytek Co Ltd, a leading Chinese AI company, the robot aced the written test of China's national medical licensing examination－it is a test that aspiring doctors need to pass－in November, thus becoming the first device in the world to achieve the feat. It received 456 marks, 96 more than the minimum required to qualify.</p>
          <p>　　Unlike the AI-enabled Watson system of US tech company IBM, which only focuses on the treatment for cancer and major diseases, iFlytek is exploring how to use AI to both treat cancer and train general practitioners.</p>
          <p>　　Its AI-enabled user interface platform has accumulated 460,000 third-party developer teams in the past seven years.</p>
          <p>　　The two sides set up a research center in Beijing to explore how to apply AI in medical treatments and training. Findings of research into brain science, neuroscience and other areas will be first tested in the Chinese Academy of Medical Sciences' affiliated hospital before being promoted at other medical institutions.</p>
          <p>　　Cao Xuetao, president of the Chinese Academy of Medical Sciences, said AI can help accelerate medical research by boosting computing capabilities, and it can also efficiently use limited resources by offering partly automated solutions.</p>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
            <a href="http://www.chinadaily.com.cn/a/201712/06/WS5a2773aba3107865316d49f0.html"><div class="row1" id="info" style="background-image:url(images/tec2.jpg);background-size:310px 140px;
              background-repeat:no-repeat;"></div></a>
            <a href="http://www.chinadaily.com.cn/business/tech/2017-11/29/content_35121645.htm"><div class="row1" id="info" style="background-image:url(images/tec3.jpg);background-size:310px 140px;
                background-repeat:no-repeat;"></div>
            <a href="http://www.chinadaily.com.cn/a/201711/10/WS5a0d2793a31061a738409518.html"><div class="row1" id="info" style="background-image:url(images/tec4.jpg);background-size:310px 140px;
                    background-repeat:no-repeat;"></div>
            <a href="http://www.chinadaily.com.cn/a/201712/09/WS5a2b5201a310eefe3e99fb53.html"><div class="row1" id="info" style="background-image:url(images/news1.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
            <a href="http://www.chinadaily.com.cn/business/tech/2017-12/10/content_35212747.htm"><div class="row1" id="info" style="background-image:url(images/tec1.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH .</p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
