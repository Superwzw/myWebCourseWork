<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
  <% request.setCharacterEncoding("utf-8");
  String msg = "";
  String comment = request.getParameter("comment");
  if(comment == null) comment = "";
  else comment = comment.trim();
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
              + "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
  String user="user"; String pwd="123";
  String id = request.getParameter("pid");
  String my = request.getParameter("my");
  if(!comment.equals("") && request.getMethod().equalsIgnoreCase("post")){
    String username = (String)session.getAttribute("user");
    if(username == null){
      msg = "Please login first!";
      String go = "showerror.jsp?msg="+msg;
      response.sendRedirect(go);
    }
    else{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection(connectString,user, pwd);
      Statement stmt = con.createStatement();
      try{
        String fmt="insert into comment(content,user,blogid) values('%s', '%s', '%s')";
        String sql = String.format(fmt,comment,username, id);
        int cnt = stmt.executeUpdate(sql);
        if(cnt>0){
          msg = "Your comment has been Announced! ";
          String go = "showerror.jsp?msg="+ msg;
          response.sendRedirect(go);
        }
        stmt.close(); con.close();
    }catch (Exception e){
      msg = e.getMessage();
      String go = "showerror.jsp?msg="+ msg;
      response.sendRedirect(go);
    }
  }
}
%>
