package org.lanqiao.dao;

import org.lanqiao.bean.User;

public interface UserDao {
	public User getUserByUserNameAndUserPassWord(User myAllUser);
	//跟据用户查询用户是否存在
	public User getUserByUserName(User myAllUser);
	//adduser
	public void adduser(User user);
	//数出总数
	public int countAllUser();
	//输出男的人数
	public int countMale();
	//用户状态
	public void UserState(User user);
	//获取用户信息
	public User getAll(User user);
	//ajax修改用户信息
	public void updateUser(User user);
}
