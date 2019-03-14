<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
	<%
  String msg = "Operation Successfully!";
%>
<!DOCTYPE HTML><html><head><title>InBlogging DeleteBlog</title>
<style> a:link,a:visited {color:white;}
a{text-decoration: none;color: white;}
a:hover{
	color: rgb(219,188,71);
}
body{
	background: url(images/bk1.png) repeat;
	color: white;
}
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
#state {
 position: absolute;
 right: 10px;
 top: 20px;
 color: white;
 font-size: 20px;
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
.container{
margin:0 auto;
width:500px;
text-align:center;
}
</style>
</head><body>
<!--Header-->
		<div id="header">
			<div id="icon">
				<img src="images/icon.png">
		</div>
		<div id="state">
			<p>InBlogging Operation</p>
		</div>
	</div>

<!--Guide-->
		<div id="nav">
		 <a href="pro.jsp"><span class="home"></span></a>
		 <a href="pro.jsp"><span class="sp" id="tag2">HOME</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag3">NEWS</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag4">SPORT</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag5">FINANCE</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag6">ENTERTAINMENT</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag7">TECHNOLOGY</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag8">BLOG</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag9">PHOTO</span></a>
		 <a href="" target="_blank"><span class="sp" id="tag10">GAMES</span></a>
		 <a href="login.jsp" target="_blank"><span class="sp" id="tag11">LOGIN</span></a>
		</div>
<div class="container">
	<h1><%=msg%></h1>
	<br></br>
	<br></br>
	<a href='pro.jsp'>Back</a>
</div>
</body>
</html>
