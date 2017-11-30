package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private BuyItemDTO buyItemDTO = new BuyItemDTO();

	/**
	 * 商品情報取得メソッド
	 *
	 * @return BuyItemDTO
	 */


	public ArrayList<BuyItemDTO> getBuyItemInfo() {
		ArrayList<BuyItemDTO> DTO = new ArrayList<BuyItemDTO>();


		String sql = "SELECT id, item_name, item_price, image_file_path, image_file_name FROM item_info_transaction";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
               BuyItemDTO buyItemDTO =new  BuyItemDTO();

				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
				buyItemDTO.setImage_file_path(resultSet.getString("image_file_path"));
				buyItemDTO.setImage_file_name(resultSet.getString("image_file_name"));
				DTO.add(buyItemDTO);
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return DTO;
	}

	public BuyItemDTO getBuyItemDTO() {
		return buyItemDTO;
	}
}