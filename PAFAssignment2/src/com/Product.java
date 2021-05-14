package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

public class Product {
	

	//DB connection
	private Connection connect() {
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productservise", "root", "Highschool23*");
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return con;
		
	}
	//generate random product ID
	public static String generateProductId() {
	    String SALTCHARS = "ABCDE1234567890";
	    StringBuilder salt = new StringBuilder();
	    Random rnd = new Random();
	    while (salt.length() < 6) { // length of the random string.
	        int index = (int) (rnd.nextFloat() * SALTCHARS.length());
	        salt.append(SALTCHARS.charAt(index));
	    }
	    String saltStr = salt.toString();
	    
    return  "PD-" + saltStr;

	}

	
	//retrieve data from database
	public String readProducts() {
		
		String output = "";
		
		try {
			
			Connection con = connect(); 
				
			 if (con == null)
			 {
				 	return "Error while connecting to the database for reading.";
			 }
			 
			// Prepare the html table to be displayed
			 output = "<table border='1'>"
			 		 + "<tr><th>Product ID</th>"
					 + "<th>Product Title</th>"
					 + "<th>Short Description</th>"
					 + "<th>Long Description</th>"
					 + "<th>Price</th>"
					 + "<th>Download Link</th>"
					 + "<th>Update</th><th>Remove</th></tr>";
			
			 String query = "select * from products";
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 
			// iterate through the rows in the result set
			 while (rs.next()) {
				 
				 String id =Integer.toString(rs.getInt("id"));
				 String productId = rs.getString("productId");
				 String title = rs.getString("title");
				 String sDesc = rs.getString("sDesc");
				 String lDesc = rs.getString("lDesc");
				 String price = rs.getString("price"); 
				 String downloadLink = rs.getString("downloadLink"); 
				 
				 
				// Add into the html table
				 
				 output += "<tr><td>" + productId + "</td>";
				 output += "<td>" + title + "</td>";
				 output += "<td>" + sDesc + "</td>";
				 output += "<td>" + lDesc + "</td>";
				 output += "<td>" + price + "</td>";
				 output += "<td>" + downloadLink + "</td>";
				 
				 
				// buttons
				 output += "<td><input name='btnUpdate' type='button' value='Update'  "
				 + "class='btnUpdate btn btn-secondary' data-id='" + id + "'></td>"
				 + "<td><input name='btnRemove' type='button' value='Remove' "
				 + "class='btnRemove btn btn-danger' data-id='" + id + "'></td></tr>";
				 
			 }
			 
			 con.close();
			 // Complete the html table
			 output += "</table>"; 
			 
			 
			
		} catch (Exception e) {
			output = "Error while reading the Products items.";
			 System.err.println(e.getMessage());
		}
		
		return output;
		
	}
	//insert data to database
	public String insertProduct(String productId,String title,String sDesc,String lDesc, String price,String downloadLink ) {
		
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if (con == null)
			 {
				return "Error while connecting to the database for inserting.";
			 }
			
			// create a prepared statement
			 String query = " INSERT INTO products(id,productId,title,sDesc,lDesc,price,downloadLink) VALUES (?,?,?,?,?,?,?)";
			 
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 
			// binding values
			 
			 preparedStmt.setInt(1, 0);
			 preparedStmt.setString(2, productId);
			 preparedStmt.setString(3, title);
			 preparedStmt.setString(4, sDesc); 
			 preparedStmt.setString(5, lDesc); 
			 preparedStmt.setString(6, price); 
			 preparedStmt.setString(7, downloadLink); 
			 
			// execute the statement
			 preparedStmt.executeUpdate();
			 con.close();
			 
			 String newinsert = readProducts();
			 output = "{\"status\":\"success\", \"data\": \"" +
					 newinsert + "\"}"; 
			 
			 
		} catch (Exception e) {
			
			output = "{\"status\":\"error\", \"data\":\"Error while inserting the item.\"}";
			System.err.println(e.getMessage());
			
		}
		
		return output;
	}

	//update data from table and database
	public String updateProduct(String id,String productId,String title,String sDesc,String lDesc, String price,String downloadLink ) {
		
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if (con == null)
			 {
				return "Error while connecting to the database for inserting.";
			 }
			
			// create a prepared statement
			 String query = "UPDATE products SET productId=?,title=?,sDesc=?,lDesc=?,price=?,downloadLink=? WHERE id =?";
			 
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 
				// binding values
			 	
				 preparedStmt.setString(1, productId);
				 preparedStmt.setString(2, title);
				 preparedStmt.setString(3, sDesc); 
				 preparedStmt.setString(4, lDesc); 
				 preparedStmt.setString(5, price); 
				 preparedStmt.setString(6, downloadLink); 
				 preparedStmt.setInt(7,  Integer.parseInt(id));
				 
				// execute the statement
				 preparedStmt.execute();
				 con.close();
				 
				 String newUpdate = readProducts();
				 output = "{\"status\":\"success\", \"data\": \"" +
						 newUpdate + "\"}"; 
				
			
		} catch (Exception e) {
			output = "{\"status\":\"error\", \"data\":\"Error while updating the item.\"}";
					 System.err.println(e.getMessage()); 
		}
		
		
		return output;
		
	}
	
	//delete data from table and database
	public String deleteProducts(String id) {
		
		String output = "";
		
		try {
			Connection con = connect();
			
			if (con == null)
			 {
				return "Error while connecting to the database for inserting.";
			 }
			
			// create a prepared statement
			 String query = "DELETE FROM products WHERE id = ? ";
			 
			 PreparedStatement preparedStmt = con.prepareStatement(query);
			 
			// binding values
			 preparedStmt.setInt(1, Integer.parseInt(id));
			 
			 
			 // execute the statement
			 preparedStmt.execute();
			 con.close(); 
			 
			 String newdelete = readProducts();
			 output = "{\"status\":\"success\", \"data\": \"" +
					 newdelete + "\"}"; 
			
		} catch (Exception e) {

		output = "{\"status\":\"error\", \"data\":\"Error while deleting the item.\"}";
					 System.err.println(e.getMessage());
			
		}
		
		return output;
		
		
	}

	

}
