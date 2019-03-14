<%@ page language="java" import="java.util.*,java.sql.*"
         contentType="text/html; charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String msg = "";
    String connectString = "jdbc:mysql://172.18.187.232:53306/teaching14"
                            + "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
    String user="user";
    String pwd="123";
    String updateButton = request.getParameter("update");
    String clearButton = request.getParameter("clear");
    String pid = request.getParameter("pid");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String sql = "";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(connectString,user, pwd);
    Statement stmt = con.createStatement();
    try{
        if(updateButton != null){
            String fmt="update blog set title='%s',content='%s' where id=%d";
            sql = String.format(fmt,title,content,Integer.parseInt(pid));
            int cnt = stmt.executeUpdate(sql);
            if(cnt>0) msg = "Edit successfully!";
        }
        else if(clearButton != null){
            content = "";
            title = "";
        }
        else{
            String fmt="select * from blog where id=%d";
            sql = String.format(fmt,Integer.parseInt(pid));
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                title = rs.getString("title");
                content = rs.getString("content");
            }
        }
        stmt.close();
        con.close();
    }
    catch (Exception e){
        msg = e.getMessage();
    }
%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>InBlogging Edit</title>
			<style>
				body{ font-family:宋体; }

				a:link,a:visited { color:blue; }

				a{ margin-top:200px;  }
				.container{
					margin:0 auto;
					width:500px;
					text-align:center; }

				form { line-height:50px; }

			</style>
    </head>
    <body>
        <div class="container">
            <form action="editblog.jsp?pid=<%=pid%>" method="post">
                title: <input id="title" name="title" type="text" value=<%=title%>><br>
                content: <input id="content" type="text" name="content" value=<%=content%>><br>
                <input type="submit" name="update" value="Ok">
                <input type="submit" name="clear" value="Clear">
            </form>
            <%=msg%><br>
            <a href='pro.jsp'>back</a>
        </div>
    </body>
</html>
