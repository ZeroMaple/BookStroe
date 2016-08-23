package org.lanqiao.bean;

import java.sql.Date;

/**
 * @author tao
 * @date 20160804
 * @info 实体类
 */
public class User {
	private int userId;//用户id
	private String userName;//用户昵称
	private String userPassword;//用户密码
	private String usereMail;//用户email
	private String userState;//状态
	private String userKey;//秘钥
	private String userRole;//用户角色
	private Date userupdate;//信息修改日期
	private String userSex;//用户性别
	private String userPhone;//用户电话
	private String userAge;//用户年龄
	private String userContent;//个人签名
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

