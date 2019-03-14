<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");
	String msg = "";
	String back = "login.jsp";
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
							+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	String user="user"; String pwd="123";
	String password1 = "";
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username == null) username = "";
	if(password == null) password = "";
	if(request.getMethod().equalsIgnoreCase("post")){
		if(!username.equals("") && !password.equals("")){
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(connectString,user, pwd);
			Statement stmt = con.createStatement();
			String fmt = "SELECT * FROM USER_INFO WHERE username ='%s'";
			String sql = String.format(fmt,username);
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				password1 = rs.getString("password");
			}
			if(password1.equals("")){
				msg = "User does not exits!";
				String go = "showerror.jsp?msg="+ msg + "&back="+ back;
				response.sendRedirect(go);
			}
			else if(password.equals(password1)){
				msg = "Login Successfully!";
				session.setAttribute("user", username);
				String go = "showerror.jsp?msg="+msg;
				response.sendRedirect(go);
			}
			else if(!password.equals(password1)){
				msg = "Password mismatch!";
				String go = "showerror.jsp?msg="+ msg + "&back="+ back;
				response.sendRedirect(go);
			}
		}
		else if(username.equals("")) {
				msg = "Please input username!";
				String go = "showerror.jsp?msg="+ msg + "&back="+ back;
				response.sendRedirect(go);
		}
		else if(password.equals("")){
			msg = "Please input password!";
			String go = "showerror.jsp?msg="+ msg + "&back="+ back;
			response.sendRedirect(go);
		}
	}
%>
<!DOCTYPE HTML><html><head><title>InBlogging Login</title>
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
.error{color: red;}
.container{
	margin:20px auto;
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
			<p>InBlogging Registration</p>
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
	<form action="login.jsp" method="post" name="f">
		<p>User name:<input id="user" name="username" type="text" ></p>
		<p>Password:<input id="password" type="password" name="password" ></p>
		<input type="submit" name="sub" value="Submit">
	</form>
	<div class="error"><%=msg%></div>
	<a href='pro.jsp'>Back</a>
</div>
</body>
</html>
