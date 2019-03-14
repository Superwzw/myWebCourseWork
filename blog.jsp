<%@ page language="java" import="java.util.*,java.sql.*"
         contentType="text/html; charset=utf-8"
%><%
	request.setCharacterEncoding("utf-8");
  String Lastpage = "";
  String Nextpage = "";
  String username = (String)session.getAttribute("user");
  String master = username;
  if(master == null) master = "";
  if(username == null){
    username = "you can login or register first!";
  }
  String welcome = "Hello, " + username + " !";
  String delete = request.getParameter("delete");
  if(delete == null) delete = "";
  if(delete.equals("ok")){
    session.removeAttribute("user");
  }
  String msg ="";
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
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8";
        StringBuilder table=new StringBuilder("");
  String mo = "";
  String sql = "";
	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection(connectString,
	                 "user", "123");
	  Statement stmt=con.createStatement();
    param = request.getParameter("mo");
    if(param == null) param = "";
    Lastpage = param.equals("")?"Last page":"";
    Nextpage = param.equals("")?"Next page":"";
    if(param != null && !param.isEmpty() ){
      mo = request.getParameter("mo");
      sql = "SELECT * FROM blog WHERE title LIKE \""+'%'+mo+'%'+"\" OR content LIKE \""+'%'+mo+'%'+"\"";
    }
    else{
      String fmt = "select * from blog limit %d,%d";
      sql = String.format(fmt,pgno*pgcnt, pgcnt);
    }
	  ResultSet rs=stmt.executeQuery(sql);
    int num = 1;
    table.append("<table><tr><th>order</th><th>Title</th><th>User</th><th>-</th></tr>");
	  while(rs.next()) {
             table.append(String.format("<tr><td>%d</td><td>%s</td><td>%s</td><td>%s</td></tr>",
                    num,"<a href='readblog.jsp?pid="+rs.getString("id")+"&my=0'>"+rs.getString("title")+"</a>",rs.getString("user"),
                    master.equals("xxh") || master.equals("wzw")? "<a href='deleteblog.jsp?pid="+rs.getString("id")+"'>Delete</a>":"public")
                    );
                    num++;
	  }
    table.append("</table>");
	  rs.close();
	  stmt.close();
	  con.close();
	}
	catch (Exception e){
	  msg = e.getMessage();
	}
%><!DOCTYPE HTML>
<html>
<head>
  <!--Header-->
      <div id="header">
        <div id="icon">
          <img src="images/icon.png">
      </div>
      <div id="user">
        <p><%=welcome%></p>
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
<title>My Blog</title>
</head>
<body>
  <div class="container">
    <form action = "blog.jsp" method="post" name="f">
      Input key for query：<input id = "query" name = "mo" type="text" >
      <input type="submit" name="sub" value="Search">
    </form>
	  <%=table%><br><br>
    <div style = "float:left">
      <a href = "write.jsp">Write new blog</a>
      <a href= "pro.jsp">Back</a>
    </div>
    <div style = "float:right">
      <a href="blog.jsp?pgno=<%=pgprev%>&pgcnt=<%=pgcnt%>"><%=Lastpage%></a>
      <a href="blog.jsp?pgno=<%=pgnext%>&pgcnt=<%=pgcnt%>"><%=Nextpage%></a>
  </div>
  </div>
  <%=msg%>
</body>
</html>

<style>
a:link,a:visited {color:white;}
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
#user {
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
table{
border-collapse: collapse;
border: none;
width: 500px;
}
td,th{
border: solid grey 1px;
margin: 0 0 0 0;
padding: 5px 5px 5px 5px
}
.container{
margin:20px auto;
width:500px;
text-align:center;
}
</style>
