package ufly.frs_test;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufly.entities.Airport;
import ufly.entities.PMF;
import ufly.entities.User;

@SuppressWarnings("serial")
public class AirportTest extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.getRequestDispatcher("AirportTest.jsp").forward(req, resp);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws IOException,ServletException
	{
		String city = req.getParameter("city");
		String callsign = req.getParameter("Callsign");
		
		Airport newAirport = new Airport(city, callsign); // TODO: create Customer once User has proven to work
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
            pm.makePersistent(newAirport);
            
        } finally {
            pm.close();
        }
		
		//resp.setContentType("text/plain");
		//resp.getWriter().println("City: "+city+" your callsign is "+ callsign);
		resp.sendRedirect("/entityTest?test=Airport");
	}
}
