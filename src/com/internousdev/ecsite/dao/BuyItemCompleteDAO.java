package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class BuyItemCompleteDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();



	private String sql = "update cart_info set purchase_flg =1 where user_id=? and purchase_flg=0";

	/**
	 * 商品購入情報登録メソッド
	 *
	 * @param item_transaction_id
	 * @param user_master_id
	 * @param total_price
	 * @param total_count
	 * @param pay
	 * @throws SQLException
	 */
	public int buyItemeInfo(String user_master_id) throws SQLException {

		int resultCont = 0;

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, user_master_id);

			 resultCont = preparedStatement.executeUpdate();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return resultCont;
	}
}
