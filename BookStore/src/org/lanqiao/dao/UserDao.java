package org.lanqiao.dao;

import org.lanqiao.bean.User;

public interface UserDao {
	public User getUserByUserNameAndUserPassWord(User myAllUser);
	//�����û���ѯ�û��Ƿ����
	public User getUserByUserName(User myAllUser);
	//adduser
	public void adduser(User user);
	//��������
	public int countAllUser();
	//����е�����
	public int countMale();
	//�û�״̬
	public void UserState(User user);
	//��ȡ�û���Ϣ
	public User getAll(User user);
	//ajax�޸��û���Ϣ
	public void updateUser(User user);
}
