
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
<html>
<head>
	<title>Vmovies</title>
	<meta http-equiv="Contect-Type" content="text/html" charset="utf-8" />
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
<h1 class="text-center"> Upload file </h1>

	
	<div class="modal-dialog">
		<div class="model-content">
			<div class="modal-header">
				<form name="UploadMovie" class="col-md-12 center-block" action="upload.jsp" method="POST" enctype="multipart/form-data">
					<%
					String saveFile = new String();
					String contentType= request.getContentType();

					if ((contentType != null) && (contentType.indexOf("multipart/form-data")) >= 0 ){
						DataInputStream in = new DataInputStream(request.getInputStream());

						int formDataLength = request.getContentLength();
						byte dataBytes[] = new byte[formDataLength];

						int byteRead = 0;
						int totalBytesRead = 0;

						while( totalBytesRead < formDataLength){

							byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
							totalBytesRead += byteRead;
						}
						

						String file = new String(dataBytes);
						saveFile = file.substring(file.indexOf("filename=\"")+10);
						saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
						saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));


						int lastIndex = contentType.lastIndexOf("=");

						String boundary = contentType.substring(lastIndex + 1, contentType.length());

						int pos;

						pos = file.indexOf("filename=\"");
						pos = file.indexOf("\n",pos) + 1;
						pos = file.indexOf("\n",pos) + 1;
						pos = file.indexOf("\n",pos) + 1;

						int boundaryLocation = file.indexOf(boundary,pos) - 4;
						int startPos = ((file.substring(0,pos)).getBytes()).length;

						int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

						saveFile="C:\\Movies\\" + saveFile;

						File ff = new File(saveFile);

						try
						{

							FileOutputStream fileOut= new FileOutputStream(ff);
							fileOut.write(dataBytes, startPos, (endPos - startPos));
							fileOut.flush();
							fileOut.close();

						}catch (Exception e){
							out.println(e);
						}
					}

					%>


					<input type="file" name="file" value="">
					<div class="form-group">
						<div class="modal-dialog">
						<input type="submit" class="btn btn-block btn-lg btn-primary" value="submit" name="submit"/>
					</div>
					</div>
					


				</form>

				<form action="/web/admin.jsp" method="POST">
					<div class="modal-footer">
						<div class="col-md-12">
							<button class="btn btn-danger">Back</button>
						</div>
					</div>
				<% 
							String jsppath = "C:\\Movies\\";
							// String fileName="file.txt";
							File dir = new File(jsppath);
							File[] filelist = dir.listFiles();
							
							for (File file : filelist) {
							if(file.isFile()){
								out.println("<BR>");
								out.println("<b><h4>");
								out.println(file.getName());
								out.println("</h4></b>");
							}
						}


				


					%>
		

				</form>	
			</div>
		</div>
	</div>
				


</body>
</html>