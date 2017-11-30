package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemList extends ActionSupport{

	private ArrayList<BuyItemDTO> buyItemDTO = new ArrayList<BuyItemDTO>();

	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	public String execute(){

		String result=SUCCESS;

		 buyItemDTO = buyItemDAO.getBuyItemInfo();

		 return result;




	}

	public ArrayList<BuyItemDTO> getBuyItemDTO() {
		return buyItemDTO;
	}

}
