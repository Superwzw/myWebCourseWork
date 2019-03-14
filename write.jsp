<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");
	String msg = "";
	String back = "write.jsp";
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
							+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	String user="user"; String pwd="123";
	String username = (String)session.getAttribute("user");
	if(username == null){
		msg = "Please login first!";
		String go = "showerror.jsp?msg="+msg;
		response.sendRedirect(go);
	}
	else{
		if(request.getMethod().equalsIgnoreCase("post")){
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			if(title.equals("")){
				msg = "Please input the title for your blog!";
				String go = "showerror.jsp?msg="+ msg + "&back="+ back;
				response.sendRedirect(go);
			}
			else if(content.equals("")){
				msg = "Please input the content for your blog!";
				String go = "showerror.jsp?msg="+ msg + "&back="+ back;
				response.sendRedirect(go);
			}
			else{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(connectString,user, pwd);
				Statement stmt = con.createStatement();
				try{ String fmt="insert into blog(title,content,user) values('%s', '%s', '%s')";
					String sql = String.format(fmt,title,content, username);
					int cnt = stmt.executeUpdate(sql);
					if(cnt>0){
						msg = "Your blog has been Announced! ";
						// msg = title;
						String go = "showerror.jsp?msg="+ msg;
						response.sendRedirect(go);
					}
					stmt.close(); con.close();
				}catch (Exception e){
					msg = "Something wrong happened,please try again!";
					String go = "showerror.jsp?msg="+ msg + " back="+ back;
					response.sendRedirect(go);
				}
			}
		}
	}
%>
<!DOCTYPE HTML><html><head><title>InBlogging Writting</title>
<style> a:link,a:visited {color:white;}
a{text-decoration: none;color: white;}
a:hover{
	color: rgb(219,188,71);
}
body{
	background: url(images/bk1.png) repeat;
	color: white;
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
.error{color: red;}
.container{
	margin:0 auto;
	width:500px;
	text-align:left;
}
#title{
	background-color:rgba(0,0,0,0.3)!important;
	border: 1px solid white;
	color: white;
}
textarea{
	background-color:rgba(0,0,0,0.3)!important;
	border: 1px solid white;
	color: white;
}

</style>
</head><body>
<!--Header-->
    <div id="header">
      <div id="icon">
        <img src="images/icon.png">
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
<div class="container">
	<form action="write.jsp" method="post" name="f">
		<p>Title:<input id="title" name="title" type="text" ></p>
		<p>Content：<textarea rows="20" cols="90" name="content" style="vertical-align: top;"></textarea></p>
		<input type="submit" name="sub" value="Submit">
	</form>
	<div class="error"><%=msg%></div>
	<a href='pro.jsp'>Back</a>
</div>
</body>
</html>
