<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: sonnguyen
  Date: 5/14/2020
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
Map<String,String>dic= new HashMap<>();
%>
<%
dic.put("hello","Xin chào");
dic.put("how","Thế nào");
dic.put("book","Quyển vở");
dic.put("computer","Máy tính");
dic.put("shit","Cứt");

String search =request.getParameter("search");

String result =dic.get(search);

if (result!= null){
    out.print("Word"+search);
    out.print("means: "+result);
}else {
    out.println("Not found");
}
%>
</body>
</html>
