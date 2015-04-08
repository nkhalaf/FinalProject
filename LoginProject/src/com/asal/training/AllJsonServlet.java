package com.asal.training;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.Operation;
import com.asal.training.bean.Json;
import com.asal.training.bean.user;

/**
 * Servlet implementation class AllJsonServlet
 */
@WebServlet("/AllJsonServlet.do")
public class AllJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst =null ; 
	private ResultSet rs2 = null;
	private PreparedStatement pst2 =null ; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllJsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Operation opp  = new Operation();
		 ArrayList<Json> jsons = opp.GetJson();
		 request.setAttribute("json",jsons);
		 RequestDispatcher rd = request.getRequestDispatcher("/allDoc.jsp");
			rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
