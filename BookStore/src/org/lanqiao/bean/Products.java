package org.lanqiao.bean;

public class Products {
	private int productId;//��Ʒid
	private String productName;//��Ʒ����
	private String productMoney;//��Ʒ�۸�
	private String productInformation;//��Ʒ����
	private int productsComment;//��Ʒ��������
	private String productsImage;//��ƷͼƬ
	private int sellerId;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductMoney() {
		return productMoney;
	}
	public void setProductMoney(String productMoney) {
		this.productMoney = productMoney;
	}
	public String getProductInformation() {
		return productInformation;
	}
	public void setProductInformation(String productInformation) {
		this.productInformation = productInformation;
	}
	public int getPRODUCTSCOMMENT() {
		return productsComment;
	}
	public void setPRODUCTSCOMMENT(int pRODUCTSCOMMENT) {
		productsComment = pRODUCTSCOMMENT;
	}
	public String getPRODUCTSIMAGE() {
		return productsImage;
	}
	public void setPRODUCTSIMAGE(String pRODUCTSIMAGE) {
		productsImage = pRODUCTSIMAGE;
	}
	public int getProductsComment() {
		return productsComment;
	}
	public void setProductsComment(int productsComment) {
		this.productsComment = productsComment;
	}
	public String getProductsImage() {
		return productsImage;
	}
	public void setProductsImage(String productsImage) {
		this.productsImage = productsImage;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public Products(int productId, String productName, String productMoney, String productInformation,
			int productsComment, String productsImage, int sellerId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productMoney = productMoney;
		this.productInformation = productInformation;
		this.productsComment = productsComment;
		this.productsImage = productsImage;
		this.sellerId = sellerId;
	}
	public Products() {
		super();
	}
	@Override
	public String toString() {
		return "Products [productId=" + productId + ", productName=" + productName + ", productMoney=" + productMoney
				+ ", productInformation=" + productInformation + ", PRODUCTSCOMMENT=" + productsComment
				+ ", PRODUCTSIMAGE=" + productsImage + "]";
	}
	
}
