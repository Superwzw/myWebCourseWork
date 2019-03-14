<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
	<% request.setCharacterEncoding("utf-8");
	String Lastpage = "";
	String Nextpage = "";
	String flag = "";
	String title = "";
	String content = "";
	String msg = "";
	String sql = "";
	String username = (String)session.getAttribute("user");
	if(username == null) username = "";
  String master = username;
	String comment = request.getParameter("comment");
	if(comment == null) comment = "";
	else comment = comment.trim();
	Integer pgno = 0;
	Integer pgcnt = 4;
	String param = request.getParameter("pgno");
	if(param != null && !param.isEmpty() ){
		pgno = Integer.parseInt(param);
	}
	param = request.getParameter("pgcnt");
	if(param != null && !param.isEmpty() ){
		pgcnt = Integer.parseInt(param);
	}
	int pgprev = (pgno>0)?pgno-1:0;
	int pgnext = pgno + 1;
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
							+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	String user="user"; String pwd="123";
	String id = request.getParameter("pid");
	String my = request.getParameter("my");
	if(my == null) my = "0";
	String addcomment = "addcomment.jsp?my=" + my + "&pid=" + id;
	StringBuilder table=new StringBuilder("");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(connectString,user, pwd);
		Statement stmt = con.createStatement();
		String fmt="select * FROM blog WHERE id ='%s'";
		sql = String.format(fmt,id);
		ResultSet rs=stmt.executeQuery(sql);
		 if(rs.next()){
				title = rs.getString("title");
				content = rs.getString("content");
		 }
		 rs.close();stmt.close(); con.close();
	}	catch (Exception e){
		  msg = e.getMessage();
		}

		try{
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con=DriverManager.getConnection(connectString,
		                 "user", "123");
		  Statement stmt=con.createStatement();
	    String fmt = "select * from comment WHERE blogid ='%s' limit %d,%d";
	    sql = String.format(fmt,id,pgno*pgcnt, pgcnt);
		  ResultSet rs=stmt.executeQuery(sql);
			table.append("<table>");
			while(rs.next()) {
							flag = "yes";
	             table.append(String.format("<tr><td>%s</td><td>%s</td><td>%s</td></tr>",
	                    rs.getString("user")+": ",rs.getString("content"),
	                    master.equals("xxh") || master.equals("wzw")? "<a href='deletecomment.jsp?pid="+rs.getString("id")+"&my="+my
											+"'>          ---Delete</a>":"          ---public")
	                    );
		  }
	    table.append("</table>");
		  rs.close();
		  stmt.close();
		  con.close();
		}
		catch (Exception e){
		  msg = e.getMessage();
		}
		Lastpage = flag.equals("yes")?"Last page":"No Comment!";
    Nextpage = flag.equals("yes")?"Next page":"";
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
width:700px;
text-align:center;
}
.container2{
margin:0 auto;
width:900px;
text-align:center;
}
.back{position: relative;right: 300px;}
.comment{position: relative;left: 300px;}
h1{text-align: center;}
p{text-align: left;}
textarea{
	background-color:rgba(0,0,0,0.3)!important;
	border: 1px solid white;
	color: white;
}
table{
	table-layout: fixed;
	border-bottom: 1px solid white;
}
td{
	border-top: 1px solid white;
}
td:first-child{
	width: 100px;
	text-align: center;
}
td:nth-child(2){
padding: 5px 5px 5px 5px;
Word-break: break-all;
width: 800px;
text-align: left;
}
</style>
</head><body>
<!--Header-->
		<div id="header">
			<div id="icon">
				<img src="images/icon.png">
		</div>
		<div id="state">
			<p>InBlogging Read</p>
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
	<h1><%=title%></h1>
	<p><%=content%></p>
	<br></br>
	<form action="<%=addcomment%>" method="post" name="f">
		<p>Comment：<textarea rows="5" cols="60" name="comment" style="vertical-align: top;overflow-x:hidden"></textarea>
		<input type="submit" name="sub" value="Submit" style="vertical-align:bottom"></p>
	</form>
	<br></br>
</div>
<div class="container2">
	<%=table%>
	<div style = "float:none">
		<a href="readblog.jsp?pgno=<%=pgprev%>&pgcnt=<%=pgcnt%>&my=<%=my%>&pid=<%=id%>"><%=Lastpage%></a>
		<a href="readblog.jsp?pgno=<%=pgnext%>&pgcnt=<%=pgcnt%>&my=<%=my%>&pid=<%=id%>"><%=Nextpage%></a>
	</div>
</div>
	<%-- <a href="<%=my.equals("1")? "myblog.jsp":"blog.jsp"%>" class="back">Back</a> --%>
</body>
</html>
