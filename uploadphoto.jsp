<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*,org.apache.commons.io.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page language="java" import="java.util.*,java.sql.*"
	contentType="text/html; charset=utf-8"%>
<%
  String username = (String)session.getAttribute("user");
  String connectString = "jdbc:mysql://172.18.187.234:53306/boke15352330"
              + "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
  String user="user"; String pwd="123";
  String fmt = "";
  String sql = "";
  String msg = "";
%>
<html><head><title>InBlogging Upload</title></head>
<body><%request.setCharacterEncoding("utf-8");%>
<%
  boolean isMultipart = ServletFileUpload.isMultipartContent(request);
  String name = "";
  if(isMultipart){
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List items = upload.parseRequest(request);
    for(int i = 0; i<items.size(); i++){
      FileItem fileItem = (FileItem)items.get(i);
      if(fileItem.isFormField()){

      }
      else{
        DiskFileItem diskFileItem = (DiskFileItem)fileItem;
        if(!diskFileItem.getName().trim().equals("")){
          out.print("Upload Successfully!");
          name = username + "_" + FilenameUtils.getName(diskFileItem.getName());
          String fileName = application.getRealPath("/file") + System.getProperty("file.separator")
                          + name;
          diskFileItem.write(new File(fileName));
          Class.forName("com.mysql.jdbc.Driver");
  				Connection con = DriverManager.getConnection(connectString,user, pwd);
  				Statement stmt = con.createStatement();
          fmt="update USER_INFO set photo='%s' where username='%s'";
          sql = String.format(fmt,name,username);
          int cnt = stmt.executeUpdate(sql);
          if(cnt>0){
            msg = "Upload Successfully!";
            String go = "showerror.jsp?msg="+msg;
            response.sendRedirect(go);
          }
        }
      }
    }
  }
  %>
  <p><a href="myblog.jsp">Back</a></p>
</body>
</html>
