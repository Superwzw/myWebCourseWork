<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
<%request.setCharacterEncoding("utf-8");
  String username = (String)session.getAttribute("user");
  int Id = 0;
  String msg = "";
  String Education = "";
  String Sex = "";
  String Hobby = "";
  String Decrition = "";
  String photoname = "";
  String sql = "";
  if(username == null){
    msg = "Please login first!";
    String go = "showerror.jsp?msg="+msg;
    response.sendRedirect(go);
  }
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
							+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	String user="user"; String pwd="123";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection(connectString,user, pwd);
  Statement stmt = con.createStatement();
  String fmt = "select * from USER_INFO WHERE username ='%s'";
  sql = String.format(fmt,username);
  ResultSet rs=stmt.executeQuery(sql);
  while(rs.next()){
    Id = rs.getInt("id");
    if(!rs.getString("education").equals("")) Education = rs.getString("education");
    if(!rs.getString("sex").equals("")) Sex = rs.getString("sex");
    if(!rs.getString("hobby").equals("")) Hobby = rs.getString("hobby");
    if(!rs.getString("decrition").equals("")) Decrition = rs.getString("decrition");
    if(!rs.getString("photo").equals("")) photoname = rs.getString("photo");
  }
  if(request.getMethod().equalsIgnoreCase("post")){
    Sex = request.getParameter("sex");
    Education = request.getParameter("education");
    Hobby = Arrays.toString(request.getParameterValues("hobby"));
    Decrition = request.getParameter("decrition");
    String SaveButton = request.getParameter("Save");
    String BackButton = request.getParameter("Back");
    if(Education == null) Education = "";
    if(Sex == null) Sex = "";
    if(Hobby == null) Hobby = "";
    if(Decrition == null) Decrition = "";
    if(SaveButton != null){
        fmt="update USER_INFO set sex='%s',education='%s',hobby='%s',decrition='%s' where id=%d";
        sql = String.format(fmt,Sex,Education,Hobby,Decrition,Id);
        int cnt = stmt.executeUpdate(sql);
        if(cnt>0){
          msg = "Update Successfully!";
          String go = "showerror.jsp?msg="+msg;
      		response.sendRedirect(go);
        }
    }
    else if(BackButton != null){
      response.sendRedirect("pro.jsp");
    }
  }
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>User Info</title>
    <style>
      textarea{vertical-align: top;}
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
      	width:550px;
        position: relative;
        top: 0px;
        right: 0px;
      }
      .photo{
        position: absolute;
        right: 20px;
        top:5px;
        height: 100px;
        width: 90px;
        border: 1px solid white;
      }
      .container1{
        position: absolute;
        right: 60px;
        top:280px;
        z-index: 5;
      }
    </style>
  </head>
  <body>
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

    <div class="container1">
        <form name="fileupload" action="uploadphoto.jsp" method="post" enctype="multipart/form-data">
          <p>Upload photo：<input type="file" name="file"><input type="submit" name="submit" value="OK" size=24></p>
        </form>
    </div>

    <div class="container">
      <div class="photo" style="background-image:url(file/<%=photoname%>);background-size:90px 100px;
        background-repeat:no-repeat;"></div>
    <form action="myinfo.jsp" method="post">
      <p>Id：<%=Id%></p>
      <p>Username：<%=username%></p>
      <p>Sex：
        male<input type="radio" name="sex" value="male" <%=Sex.equals("male")?"checked":""%>/>
        female<input type="radio" name="sex" value="female" <%=Sex.equals("female")?"checked":""%>/>
      </p>
      <p>Education：
        <select name="education">
          <option value="Private" <%=Education.equals("Private")?"selected":""%>>Private</option>
          <option value="Pupils" <%=Education.equals("Pupils")?"selected":""%>>Pupils</option>
          <option value="Junior high school students" <%=Education.equals("Junior high school students")?"selected":""%>>Junior high school students</option>
          <option value="High school student" <%=Education.equals("High school student")?"selected":""%>>High school student</option>
          <option value="Undergraduate" <%=Education.equals("Undergraduate")?"selected":""%>>Undergraduate</option>
          <option value="Master" <%=Education.equals("Master")?"selected":""%>>Master</option>
          <option value="Doctor" <%=Education.equals("Doctor")?"selected":""%>>Doctor</option>
        </select>
      </p>
      <p>Hobby：
        Games<input type="checkbox" name="hobby" value="games" <%=Hobby.indexOf("games")>=0?"checked":""%>/>
        Photo<input type="checkbox" name="hobby" value="photo"  <%=Hobby.indexOf("photo")>=0?"checked":""%>/>
        Sport<input type="checkbox" name="hobby" value="sport" <%=Hobby.indexOf("sport")>=0?"checked":""%>/>
        Reading<input type="checkbox" name="hobby" value="reading" <%=Hobby.indexOf("reading")>=0?"checked":""%>/>
        Movies<input type="checkbox" name="hobby" value="movies" <%=Hobby.indexOf("movies")>=0?"checked":""%>/>
        Traval<input type="checkbox" name="hobby" value="traval" <%=Hobby.indexOf("traval")>=0?"checked":""%>/>
      </p>
      <p>Decrition：<textarea rows="5" cols="30" name="decrition"><%=Decrition%></textarea></p>
      <input type="submit"name="Save" value="Save"/>
      <input type="submit"name="Back" value="Back"/>
    </form>
  </div>
  </body>
</html>
