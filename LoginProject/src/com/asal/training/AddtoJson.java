package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.ConnectionToDatabase;
import com.asal.training.Database.Operation;

/**
 * Servlet implementation class AddtoJson
 */
@WebServlet("/AddtoJson")
public class AddtoJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoJson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
		
		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		 Operation operation = new Operation();
		 String json =operation.GetJson().get(0).getJson();
		 json =json.substring(0,json.length()-2);
		 String jsonToadd = request.getParameter("jsonToadd");
		 json +=","+jsonToadd+"]}";
		 int tabelID  = Integer.parseInt(request.getParameter("RowID").toString());
		 try {
				pst=connection.getConn().prepareStatement("update \"JSON\" SET \"JSONC\"='"+json+"' where \"JSONID\"='"+tabelID+"' ;");
				if(!pst.execute())
					System.out.println("done");
				else{
					System.out.println("np");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		 
	}

}
