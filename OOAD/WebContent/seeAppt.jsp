<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointments</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jquery.session.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>

</head>
<body>


<div class="box">
              <section>
              <h1>Appointments</h1>
              <div class="btngrp">
              <button class="button" style="vertical-align:middle">Cancel</button>
              <select id='appList' name ='appList' style="width:500px;">
				<% 
			try {
				List<String> apps = (List<String>)request.getAttribute("allApptStr"); 
				for(int i = 0; i< apps.size();i++) { %>
					<option value=<%=(apps.get(i).split("_")[0])%>><%=(apps.get(i)).split("_")[1]%> </option> <%
				}
			}
				catch(Exception e) {
		
				}
			%>
</select>
              </div>
          </section>
          </div>
</body>
</html>