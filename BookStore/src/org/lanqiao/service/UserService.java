package org.lanqiao.service;

import org.lanqiao.bean.User;

public interface UserService {
	//��½
	public User getUserByUserNameAndUserPassWord(User myAllUser);
	//�����û���ѯ�û��Ƿ����
	public User getUserByUserName(User myAllUser);
	//adduser
	public void adduser(User user);
	//�û�״̬
	public void UserState(User user);
	//��ȡ�û���Ϣ
	public User getAll(User user);
	//ajax�޸��û���Ϣ
	public void updateUser(User user);
}
