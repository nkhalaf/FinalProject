package com.asal.training;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.Operation;
import com.asal.training.bean.Json;

/**
 * Servlet implementation class getJsonbyId
 */
@WebServlet("/getJsonbyId.do")
public class getJsonbyId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getJsonbyId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		 Operation opp  = new Operation();
		 Json jsons = opp.getJsonbyId(id);
		 System.out.println(jsons.getTitle());
		 request.setAttribute("json",jsons);
		 RequestDispatcher rd = request.getRequestDispatcher("/DisplayJasonC.jsp");
		 rd.forward(request, response);
		
	}

}
