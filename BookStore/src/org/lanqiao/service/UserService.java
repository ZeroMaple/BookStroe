package org.lanqiao.service;

import org.lanqiao.bean.User;

public interface UserService {
	//登陆
	public User getUserByUserNameAndUserPassWord(User myAllUser);
	//跟据用户查询用户是否存在
	public User getUserByUserName(User myAllUser);
	//adduser
	public void adduser(User user);
	//用户状态
	public void UserState(User user);
	//获取用户信息
	public User getAll(User user);
	//ajax修改用户信息
	public void updateUser(User user);
}
