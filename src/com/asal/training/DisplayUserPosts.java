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
 * Servlet implementation class DisplayUserPosts
 */
@WebServlet("/DisplayUserPosts.do")
public class DisplayUserPosts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private Connection conn = null;
		private Statement st = null;
		private ResultSet rs = null;
		private PreparedStatement pst = null;

    /**
     * 
     * @see HttpServlet#HttpServlet()
     */
    public DisplayUserPosts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Post> posts = new ArrayList<Post>();
		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		try {
			pst= connection.getConn().prepareStatement("SELECT \"id\", \"userName\",\"post\"FROM \"users\",\"Posts\"where \"userId\"=\"userID\"");
			rs = pst.executeQuery();

			while(rs.next()){
				String userName = rs.getString("userName");
				String post=  rs.getString("post");
				int id = rs.getInt("id");
				Post nextPost = new Post(post, id, userName);
				posts.add(nextPost);	
			}
			System.out.println(posts.get(0).getUserName());
			request.setAttribute("allPost",posts);
		     RequestDispatcher rd =request.getRequestDispatcher("/user.do");
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
