<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Check</title> 
        </head> 
        <body> 
            <%
            String user = request.getParameter("username");
			String pass = request.getParameter("password");

            out.println(user);
            out.println(pass);
           


            %>

    </body> 
    </html>