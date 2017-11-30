package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.CartDTO;
import com.internousdev.ecsite.util.DBConnector;


public class CartDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private Object result;
	PreparedStatement preparedStatement;

	public void InCart(int itemid, String user_id,  int count,int totalprice,String itemname){






//カート情報を入れる。
		String sql = "INSERT INTO cart_info (item_name,insert_date,user_id, count,total_price,item_id) VALUES ( ?,now(),?,?,?,?) ";


		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,itemname);
			preparedStatement.setString(2,user_id);
			preparedStatement.setInt(3,count);
			preparedStatement.setInt(4, totalprice);
			preparedStatement.setInt(5, itemid);


			preparedStatement.executeUpdate();


	} catch(Exception e) {
		e.printStackTrace();
	}






}



	public ArrayList<CartDTO> getCartUser( String user_id){
		ArrayList<CartDTO> cartDTO  = new ArrayList<CartDTO>();

		String[] strArray = { "user_id =\'" + user_id + "\'"};
		String sep = ",";

		StringBuilder ap = new StringBuilder();
		for (String str : strArray) {
			if (ap.length() > 0) {
				ap.append(sep);
			}

			ap.append(str);
		}


//カート情報と、同時に商品情報を持ってくる。
		String sql = "SELECT * FROM  cart_info where user_id = ? and purchase_flg=0";

		System.out.println(ap.toString());
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);


			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				CartDTO car = new CartDTO();
				car.setItem_name(resultSet.getString("item_name"));
				car.setCount(resultSet.getInt("count"));
			    car.setItem_price(resultSet.getInt("total_price"));
			    cartDTO.add(car);
			}



			System.out.println(sql);




	} catch(Exception e) {
		e.printStackTrace();
	}
		return cartDTO;


	}

	public Connection getConnection() {
		return connection;
	}



	public void setConnection(Connection connection) {
		this.connection = connection;
	}


	public Object getResult() {
		return result;
	}


	public void setResult(Object result) {
		this.result = result;
	}

}
