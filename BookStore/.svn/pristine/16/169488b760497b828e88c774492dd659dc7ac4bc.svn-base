package org.lanqiao.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.bean.Products;
import org.lanqiao.bean.User;
import org.lanqiao.service.UserService;
import org.lanqiao.utils.MailUtils;
import org.lanqiao.utils.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	private UserService myAllUserService;

	public UserService getMyAllUserService() {
		return myAllUserService;
	}
	//自动填充
	@Autowired
	public void setMyAllUserService(UserService myAllUserService) {
		this.myAllUserService = myAllUserService;
	}
	//用户登录
	@RequestMapping("login")
	public String login(User user,HttpSession session,HttpServletRequest request){
		User mau = myAllUserService.getUserByUserNameAndUserPassWord(user);
		if(mau!=null){
			session.setAttribute("login", mau);
		return "redirect:product.do";
		}else{
			request.setAttribute("error", "密码错误！");
			return "Login";
		}
	}
	//添加用户
	@RequestMapping("look")
	public void AddUser(User user,HttpServletResponse resquset){
		User myUser=myAllUserService.getUserByUserName(user);
		PrintWriter out = null;
		try {
			out = resquset.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(myUser==null){
			out.write("1");
		}else{
			out.write("0");
		}
	}
	//adduser
	@RequestMapping("adduser")
	public String addUser(User user,HttpSession session){
		user.setUserKey(UUID.randomUUID().toString());
		myAllUserService.adduser(user);
			// 发送邮件操作
			String emailMsg ="激活码是"
					+ user.getUserKey()
					+"请激活"
			     +"http://localhost:8080/BookStore/state.do?usereMail="+user.getUsereMail();
			//邮箱激活验证
			MailUtils mailUtils=new MailUtils();
			try {
				mailUtils.sendMail(user.getUsereMail(), emailMsg);
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return"ReisterSuccess";
	}
//邮箱激活
@RequestMapping("state")
public String UserState(HttpServletRequest request,User user){
	myAllUserService.UserState(user);
	request.setAttribute("state", "邮箱已激活！");
	return"Login";
}
//用户注销
	@RequestMapping("relogin")
	public String ReLogin(HttpSession session){
		session.setAttribute("login",null);
		return "redirect:product.do";
	}
	//自己跳转
	@RequestMapping("Index")
	public String Re(HttpSession session){
		session.setAttribute("login",null);
		return"Index";
	}
	//添加用户头像
@RequestMapping("do")
public void test(Products products){
	UploadUtils up=new UploadUtils();
}
//获取用户所有信息
@RequestMapping("getAllUser")
public String getallUser(HttpServletRequest request,User user){
	request.setAttribute("userInfo", myAllUserService.getAll(user));
	return "PersonalInformation";
}
//获取修改用户所有信息
@RequestMapping("getAllUpdateUser")
public String getallUpdateUser(HttpServletRequest request,User user){
	request.setAttribute("userInfo", myAllUserService.getAll(user));
	return "PersonalInformationUpdate";
}
//ajax修改用户信息
@RequestMapping("updateUser")
public String updateUser(User user){
	myAllUserService.updateUser(user);
	return"redirect:getAllUpdateUser.do?usereMail="+user.getUsereMail();
}
}