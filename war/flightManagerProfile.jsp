<%@ page import="java.util.*" %>

<html>
<head>	
	<jsp:include page="/_header" />
	
	
</head>

<body>
	<jsp:include page="/_navbar" />
	<div class="container">
		<div id="content"><!-- start content -->
			<h2>Welcome Admin</h2>
			
			<div class="bs-docs-example">
				<ul class="nav nav-pills">
				<li><a href="#flights" data-toggle="tab">Upcoming Flights</a></li>
				<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Statistics <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#airport"data-toggle="tab">Airport Statistics</a></li>
                  <li><a href="#flightstat" data-toggle="tab">Flight Statistics</a></li>
                </ul>
              </li>					
              <li><a href="#flightbookings" data-toggle="tab">Flightbookings</a></li>			
					<li><a href="#airports" data-toggle="tab">Airports</a></li>				
				</ul>
				<div class="tab-content">
					<div id="flights" class="tab-pane fade active in">
						<jsp:include page="/_adminFlights" />
						<a href="/flightManagerProfile/addFlights"><button class="btn btn-primary">Add Flights</button></a>
					</div>
					<div id="airport" class="tab-pane fade">
						<jsp:include page="/_adminStats" />
					</div>
					<div id="flightstat" class="tab-pane fade">
						<jsp:include page="/_flightStats" />					
					</div>
					<div id="flightbookings" class="tab-pane fade">				
						<jsp:include page="/_adminFlightbookings" />
					</div>
					<div id="airports" class="tab-pane fade">				
						<jsp:include page="/_adminAirports" />
						<a href="/flightManagerProfile/addAirports"><button class="btn btn-primary">Add Airports</button></a>
					</div>
				</div> <!-- tab content -->
			</div><!-- tabbable -->
			
			
    	</div><!-- end content -->
		    
    	<div id="footer"><!-- start footer -->
    		<jsp:include page="/_footer" />
    	</div><!-- end footer -->
	</div>
	<!-- page generated at: <% //out.print(request.getAttribute("date")); %>-->
	
</body>
</html>