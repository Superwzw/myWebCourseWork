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
    <title>InAnimal</title>
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
        <div id="new1" style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">Chinese mergansers spotted in Nanyang</div>
        <div class="row1" id="write" style="background-image:url(images/an1.jpg);background-size:640px 300px;background-repeat:no-repeat;"></div>
        <div class="row1" id="w3" style="color:white;">
          <p>　　Chinese mergansers, an endangered species of bird under state protection, have been spotted at Baihe River in Nanyang over the past two months by Wang Yuezhong, a local shutterbug.</p>
          <p>　　The striking sea duck has a thin bill, red legs and a crest of wispy elongated feathers. The adult male features a black head, mantle and wings, while the female is distinguished by its red head, grey mantle and wings.</p>
          <p>　　According to Wang, he first spotted a male Chinese merganser at Baihe River on Oct 20 while in the process of photographing birds. After confirming it as a Chinese merganser via the internet, he set off to find a female of the species in the city.</p>
          <p>　　Often referred to as a "living fossil of birds", Chinese mergansers have been listed as a national first-level protected animal. The number of this species, which is faced with threats from fishing, vegetation destruction, habitat fragmentation, and water pollution, is dropping steadily.</p>
          <p>　　At the end of 2015, traces left by Chinese mergansers were found at the Danjiang River Wetland National Nature Reserve in Nanyang by experts from the State Forestry Administration.</p>
          <p>　　Chinese mergansers are picky about the water environment, requiring the water where they live to be absolutely clean and unpolluted. More than 10 years ago, they mainly lived in clear rivers and creeks. Now they are often spotted in the surrounding areas of reservoirs.</p>
        </div>
      </div>
<!--Block Left-->

      <div class="col2">
        <div class="row2" id="m0"  style="color:rgb(255,255,255);font-size:150%;text-align:center;font-family:华文新魏">
            <p></p>RELEVANT COMMENDATIONS</div>
        <a href="http://www.chinadaily.com.cn/culture/art/2017-11/30/content_35133389.htm"><div class="row1" id="info" style="background-image:url(images/an0.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://www.bbc.com/news/av/stories-42267618/when-the-world-sang-with-whales"><div class="row1" id="info" style="background-image:url(images/an2.jpg);background-size:310px 140px;
                      background-repeat:no-repeat;"></div>
        <a href="http://www.bbc.com/sport/football/40319327"><div class="row1" id="info" style="background-image:url(images/an3.jpg);background-size:310px 140px;
          background-repeat:no-repeat;"></div></a>
        <a href="http://www.bbc.com/sport/football/40319327"><div class="row1" id="info" style="background-image:url(images/an5.jpg);background-size:310px 140px;
            background-repeat:no-repeat;"></div>
      </div>
    </div>
    <div class="footer" id = "foot" style="color:rgb(255,255,255);text-align:center;">
    <p>&copy; Design by ZW  XH .</p></div>
  </div>
<!--Write,Myinfo,Myblog end-->
