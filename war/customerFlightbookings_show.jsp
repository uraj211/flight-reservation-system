<%@ page import="java.util.*, ufly.entities.FlightBooking" %>

<html>
<head>	
	<jsp:include page="/_header" />
	
</head>
<body>
	<jsp:include page="/_navbar" />
	<div class="container">
		<div id="content"><!-- start content -->
			<h3>Customer Flightbookings - show Flight 
			</h3>
			<div class="row-fluid">
    			<div class="span12">
        			<div class="row-fluid">
	        			<%
							if(request.getAttribute("showFlightbooking") != null){
								FlightBooking showFlightbooking = (FlightBooking) request.getAttribute("showFlightbooking");
								out.print("<div class=\"dl-horizontal\">");
	        						out.print("<div class=\"control-group\">");
		                    			out.print("<dt>flightNumber</dt>");
										out.print("<dd>"+showFlightbooking.getConfirmationNumber().getId()+"</dd>");
									out.print("</div>");
									out.print("<div class=\"control-group\">");
		                    			out.print("<dt>Passenger Name</dt>");
										out.print("<dd>"+showFlightbooking.getConfirmationNumber().getId()+"</dd>");
									out.print("</div>");
		                		out.print("</div>");
							}
						%>
						<form action = "" method="post">
						<input type="submit" value="Check In">
						</form>
					</div><!--/span row-->
				</div><!--/span12-->
			</div><!--/row-->
    	</div><!-- end content -->
		    
    	<div id="footer"><!-- start footer -->
    		<jsp:include page="/_footer" />
    	</div><!-- end footer -->
	</div>
	<!-- page generated at: <% //out.print(request.getAttribute("date")); %>-->
</body>
</html>