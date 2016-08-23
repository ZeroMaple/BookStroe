package org.lanqiao.bean;

import java.util.Date;

public class Seller {
	private Integer SellerId; //�̼�ID
	private String SellerName; //�̼�����
	private String SellerPhone;//�̼ҵ绰
	private String SellerEmail;//�̼�Email
	private String SellerPassWord;//�̼�����
	private Date SellerDate;//�̼���פ����
	public Integer getSellerId() {
		return SellerId;
	}
	public void setSellerId(Integer sellerId) {
		SellerId = sellerId;
	}
	public String getSellerName() {
		return SellerName;
	}
	public void setSellerName(String sellerName) {
		SellerName = sellerName;
	}
	public String getSellerPhone() {
		return SellerPhone;
	}
	public void setSellerPhone(String sellerPhone) {
		SellerPhone = sellerPhone;
	}
	public String getSellerEmail() {
		return SellerEmail;
	}
	public void setSellerEmail(String sellerEmail) {
		SellerEmail = sellerEmail;
	}
	public String getSellerPassWord() {
		return SellerPassWord;
	}
	public void setSellerPassWord(String sellerPassWord) {
		SellerPassWord = sellerPassWord;
	}
	public Date getSellerDate() {
		return SellerDate;
	}
	public void setSellerDate(Date sellerDate) {
		SellerDate = sellerDate;
	}
	public Seller(Integer sellerId, String sellerName, String sellerPhone, String sellerEmail, String sellerPassWord,
			Date sellerDate) {
		super();
		SellerId = sellerId;
		SellerName = sellerName;
		SellerPhone = sellerPhone;
		SellerEmail = sellerEmail;
		SellerPassWord = sellerPassWord;
		SellerDate = sellerDate;
	}
	public Seller() {
		super();
	}
	@Override
	public String toString() {
		return "Seller [SellerId=" + SellerId + ", SellerName=" + SellerName + ", SellerPhone=" + SellerPhone
				+ ", SellerEmail=" + SellerEmail + ", SellerPassWord=" + SellerPassWord + ", SellerDate=" + SellerDate
				+ "]";
	}
	
	
}
