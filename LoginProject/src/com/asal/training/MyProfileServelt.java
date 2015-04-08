package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.ConnectionToDatabase;
import com.asal.training.bean.Post;

/**
 * Servlet implementation class MyProfileServelt
 */
@WebServlet("/MyProfileServelt.do")
public class MyProfileServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private Connection conn = null;
		private Statement st = null;
		private ResultSet rs = null;
		private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyProfileServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String name = request.getSession().getAttribute("Username")+"";
	System.out.println("the seesion contain " +name.trim());
	String q ="SELECT \"id\", \"userName\",\"post\"FROM \"users\",\"Posts\"where \"userId\"=\"userID\" and \"userName\"='"+name.trim()+"'";
	ArrayList<Post> posts = new ArrayList<Post>();
	ConnectionToDatabase  connection = new ConnectionToDatabase();
	connection.openConnection();
	try {
		pst= connection.getConn().prepareStatement(q);
		rs = pst.executeQuery();

		while(rs.next()){
			String userName = rs.getString("userName");
			String post=  rs.getString("post");
			int id = rs.getInt("id");
			Post nextPost = new Post(post, id, userName);
			posts.add(nextPost);	
		}

		request.setAttribute("allPost",posts);
	     RequestDispatcher rd =request.getRequestDispatcher("/MyProfile.do");
	     rd.forward(request, response);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
