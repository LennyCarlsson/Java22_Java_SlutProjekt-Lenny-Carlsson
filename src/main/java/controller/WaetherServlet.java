package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GetWaether;
import model.WeatherBean;



@WebServlet("/WaetherServlet")
public class WaetherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WaetherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String cityStr = request.getParameter("city");
		String countryStr = request.getParameter("country");

		WeatherBean wBean = new WeatherBean(cityStr, countryStr);

		GetWaether.getWeather(wBean);
		//******************************************
			
		
		Cookie c1 = new Cookie("City",cityStr);
        Cookie c2 = new Cookie("Country",countryStr);
        
        //response.setHeader("Set-Cookie", null);
        
        response.addCookie(c1);
        response.addCookie(c2);
		
		//********************************************
		request.setAttribute("wBean", wBean);

		RequestDispatcher rd = request.getRequestDispatcher("showWeather.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
