package org.lanqiao.serviceImpl;

import org.lanqiao.bean.User;
import org.lanqiao.dao.UserDao;
import org.lanqiao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService {
	
	@Override
	public User getUserByUserNameAndUserPassWord(User myAllUser) {
		return myAllUserDao.getUserByUserNameAndUserPassWord(myAllUser);
	}
	private UserDao myAllUserDao;
	public UserDao getMyAllUserDao() {
		return myAllUserDao;
	}
	@Autowired
	public void setMyAllUserDao(UserDao myAllUserDao) {
		this.myAllUserDao = myAllUserDao;
	}
	@Override
	public User getUserByUserName(User myAllUser) {
		// TODO Auto-generated method stub
		return myAllUserDao.getUserByUserName(myAllUser);
	}
	@Override
	public void adduser(User user) {
		// TODO Auto-generated method stub
		myAllUserDao.adduser(user);
	}
	@Override
	public void UserState(User user) {
		// TODO Auto-generated method stub
		myAllUserDao.UserState(user);
	}
	@Override
	public User getAll(User user) {
		// TODO Auto-generated method stub
		
		return myAllUserDao.getAll(user);
	}
	@Override
	public void updateUser(User user) {
		myAllUserDao.updateUser(user);
		
	}
	
}
