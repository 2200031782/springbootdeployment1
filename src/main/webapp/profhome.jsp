<%@page import="com.klef.jfsd.sdpproject.model.Professional"%>
<% 
    Professional prof = (Professional)session.getAttribute("prof");
if(prof==null)
{
	response.sendRedirect("profsessionexpiry");
	return;
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Home</title>
      <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            max-width: 600px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        h2 {
            margin-bottom: 15px;
            color: #333;
        }
    </style>
</head>
<body>
    <%@ include file="profnavbar.jsp" %>
    <div class="container">
        <h2>Welcome to the Professional Home</h2>
        <p>Welcome <%= prof.getName() %></p>
        <!-- Add any additional content here -->
    </div>
</body>
</body>
</html>
