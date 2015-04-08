package com.asal.training.Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.asal.training.bean.Json;
import com.asal.training.bean.user;

public class Operation  implements Database{
	
	
	//variables we need  in the connection to database
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst =null ; 
	private ResultSet rs2 = null;
	private PreparedStatement pst2 =null ; 
	
	
	
	
    // this  method return the  json as String from the database
	
	 public  ArrayList<Json>  GetJson(){
		 ArrayList<Json> result  = new ArrayList<Json>();
		 ConnectionToDatabase  connection = new ConnectionToDatabase();
		 connection.openConnection();
		  try {
			pst= connection.getConn().prepareStatement("select *  from \"JSON\"");
			rs = pst.executeQuery(); 
			     while(rs.next()){
				       String  json  = rs.getString(2);
				       int id =rs.getInt(1);
				       String Title = rs.getString(3);
				       Json  currnet_json = new Json(json, Title, id);
				        result.add(currnet_json); 
			       }
		    }  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		     }
    return result ;
    
	    }
	 public Json getJsonbyId(int id ){
		 ConnectionToDatabase  connection = new ConnectionToDatabase();
		 connection.openConnection();
		 Json  currnet_json=null;
		  try {
				pst= connection.getConn().prepareStatement("select *  from \"JSON\" where \"JSONID\"="+id+"");
				rs = pst.executeQuery(); 
				     while(rs.next()){
					       String  json  = rs.getString(2);
					       int Jid =rs.getInt(1);
					       String Title = rs.getString(3);
					       currnet_json = new Json(json, Title, Jid);
					       
				       }
			    }  catch (SQLException e) {
				// TODO Auto-generated catch block00
				e.printStackTrace();
			     }
		 return   currnet_json ;
	 }
	 public ArrayList getusers(){

			ConnectionToDatabase  connection = new ConnectionToDatabase();
			connection.openConnection();
			
		  ArrayList<String> result = new ArrayList<String>();
		  try {
			pst=conn.prepareStatement("select * from users");
			rs= pst.executeQuery();
			while(rs.next()){
				result.add(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return result ;
		 
	 }
	 
	//  this  method  to  open  the connection to the database 

	
	public ArrayList<user> ListAllusers(){
		
		ArrayList<user> users  = new ArrayList<user>();
		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		try {
			pst=connection.getConn().prepareStatement("select * from \"userDetails\"");
			rs= pst.executeQuery();
			pst2=connection.getConn().prepareStatement("select * from users");
			rs2 = pst2.executeQuery();
			 while(rs.next() &&  rs2.next()){
				String  gender = rs.getString(2);
				int id = rs.getInt(1);
				String bDay = rs.getString(3);
				String phone  = rs.getString(4);
				String adress = rs.getString(5);
			
				String name =rs2.getString(2);
				String password= rs2.getString(3);
				user x = new user(name, adress, id, phone, password, gender, bDay);
				users.add(x);
			 }
				} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users; 
	}
	
	
}
