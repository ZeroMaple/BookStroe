package org.lanqiao.bean;

import java.sql.Date;

/**
 * @author tao
 * @date 20160804
 * @info ʵ����
 */
public class User {
	private int userId;//�û�id
	private String userName;//�û��ǳ�
	private String userPassword;//�û�����
	private String usereMail;//�û�email
	private String userState;//״̬
	private String userKey;//��Կ
	private String userRole;//�û���ɫ
	private Date userupdate;//��Ϣ�޸�����
	private String userSex;//�û��Ա�
	private String userPhone;//�û��绰
	private String userAge;//�û�����
	private String userContent;//����ǩ��
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUsereMail() {
		return usereMail;
	}
	public void setUsereMail(String usereMail) {
		this.usereMail = usereMail;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public String getUserKey() {
		return userKey;
	}
	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public Date getUserupdate() {
		return userupdate;
	}
	public void setUserupdate(Date userupdate) {
		this.userupdate = userupdate;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	
	public String getUserContent() {
		return userContent;
	}
	public void setUserContent(String userContent) {
		this.userContent = userContent;
	}
	
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	
	public User(int userId, String userName, String userPassword, String usereMail, String userState, String userKey,
			String userRole, Date userupdate, String userSex, String userPhone, String userAge, String userContent) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.usereMail = usereMail;
		this.userState = userState;
		this.userKey = userKey;
		this.userRole = userRole;
		this.userupdate = userupdate;
		this.userSex = userSex;
		this.userPhone = userPhone;
		this.userAge = userAge;
		this.userContent = userContent;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", usereMail="
				+ usereMail + ", userState=" + userState + ", userKey=" + userKey + ", userRole=" + userRole
				+ ", userupdate=" + userupdate + ", userSex=" + userSex + ", userPhone=" + userPhone + ", userAge="
				+ userAge + ", userContent=" + userContent + "]";
	}
	
	
	
}

