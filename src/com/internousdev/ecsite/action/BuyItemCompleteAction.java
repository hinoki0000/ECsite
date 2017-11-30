package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;

	/**
	 * 商品購入情報登録完了メソッド
	 *
	 * @author internous
	 * @throws SQLException
	 */
	public String execute() throws SQLException {

		String result = SUCCESS;


		LoginDTO dto= (LoginDTO) session.get("userid");
		String userid=dto.getUserid();

		BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();
		int resultCount = buyItemCompleteDAO.buyItemeInfo(userid);

		if(resultCount == 0){
			result = ERROR;
		}
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
