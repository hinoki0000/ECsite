package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.CartDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;

	private CartDAO cartdao = new CartDAO();

	private ArrayList<CartDTO> Itemlist=new ArrayList<CartDTO>();





	/**
	 * 商品購入情報登録メソッド
	 *
	 * @author internous
	 */
	public String execute() throws SQLException {
		String userid;

		LoginDTO dto= (LoginDTO) session.get("userid");
		userid=dto.getUserid();
		Itemlist=cartdao.getCartUser(userid);




		String result = SUCCESS;
		return result;
	}

	public ArrayList<CartDTO> getItemlist() {
		return Itemlist;
	}

	public void setItemlist(ArrayList<CartDTO> itemlist) {
		Itemlist = itemlist;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
