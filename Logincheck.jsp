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
            String user = request.getParameter("inumber");
			String pass = request.getParameter("password");

            if (user.equals("i82671") && pass.equals("admin")) {
                response.sendRedirect("admin.jsp");
            }
            else{
                response.sendRedirect("index.jsp");
             }
           


            %>

    </body> 
    </html>