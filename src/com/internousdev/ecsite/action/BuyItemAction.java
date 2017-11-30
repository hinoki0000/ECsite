
package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.CartDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	/**
	 * アイテム購入個数
	 *
	 *
	 */
	private String userid;

	private String itemid;

	private int count;

	private int itemPrice;

	public String itemName;

	private ArrayList<CartDTO> cartlist=new ArrayList<CartDTO>();













	/**
	 * 支払い方法
	 */
	private String pay;

	/**
	 * アイテム情報を格納
	 */
	public Map<String, Object>  session;

	/**
	 * 商品情報取得メソッド
	 *
	 * @author internous
	 */
	public String execute() {

		String result = SUCCESS;



		LoginDTO dto = (LoginDTO) session.get("userid");
		userid = dto.getUserid();
		int totalprice=count*itemPrice;

		System.out.println(userid);


		CartDAO CartDAO= new CartDAO();

		CartDAO.InCart(Integer.parseInt(itemid), userid, count,totalprice,itemName);



		cartlist=CartDAO.getCartUser(userid);






		String payment;

		if(pay.equals("1")) {

			payment = "現金払い";
			session.put("pay", payment);
		} else {

			payment = "クレジットカード";
			session.put("pay", payment);
		}

		return result;

	}





	public String getUserid() {
		return userid;
	}









	public void setUserid(String userid) {
		this.userid = userid;
	}













	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}





	public ArrayList<CartDTO> getCartlist() {
		return cartlist;
	}





	public Map<String, Object> getSession() {
		return session;
	}




	public int getCount() {
		return count;
	}









	public void setCount(int count) {
		this.count = count;
	}









	public int getItemPrice() {
		return itemPrice;
	}









	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}





	public String getItemid() {
		return itemid;
	}





	public void setItemid(String itemid) {
		this.itemid = itemid;
	}
}
