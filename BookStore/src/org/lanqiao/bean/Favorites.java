package org.lanqiao.bean;
/**
 * 
 * @author Administrator
 * ��Ʒ�ղر�
 */
public class Favorites {
private int	favoritesId; //�ղ�Ʒid
private int	PRODUCTID;// ��Ʒid
private int	USERID;//�û�id
public int getFavoritesId() {
	return favoritesId;
}
public void setFavoritesId(int favoritesId) {
	this.favoritesId = favoritesId;
}
public int getPRODUCTID() {
	return PRODUCTID;
}
public void setPRODUCTID(int pRODUCTID) {
	PRODUCTID = pRODUCTID;
}
public int getUSERID() {
	return USERID;
}
public void setUSERID(int uSERID) {
	USERID = uSERID;
}
public Favorites(int favoritesId, int pRODUCTID, int uSERID) {
	super();
	this.favoritesId = favoritesId;
	PRODUCTID = pRODUCTID;
	USERID = uSERID;
}
public Favorites() {
	super();
}
@Override
public String toString() {
	return "Favorites [getFavoritesId()=" + getFavoritesId() + ", getPRODUCTID()=" + getPRODUCTID() + ", getUSERID()="
			+ getUSERID() + "]";
}

}
