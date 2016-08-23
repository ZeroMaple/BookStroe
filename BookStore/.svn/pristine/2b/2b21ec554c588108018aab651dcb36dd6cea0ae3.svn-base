package org.lanqiao.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class MailUtils {

	public static void sendMail(String email, String emailMsg)
			throws AddressException, MessagingException {
		Properties prop=new Properties();
		prop.setProperty("mail.transport.protocol","smtp");
		prop.setProperty("mail.smtp.host","smtp.qq.com");
		prop.setProperty("mail.smtp.port","465");
		prop.setProperty("mail.smtp.auth","true");
		prop.setProperty("mail.smtp.ssl.enable","true");
		prop.setProperty("mail.debug","true");
		Session session = Session.getInstance(prop);
	    Message msg=new MimeMessage(session);
	    msg.setFrom(new InternetAddress("yunpengwork@foxmail.com"));
	    msg.setRecipients(RecipientType.TO, new InternetAddress[]{new InternetAddress(email)});
	    msg.setSubject("图书商城邮箱激活");
	    msg.setText(emailMsg);
	    Transport trans=session.getTransport();
	    trans.connect("yunpengwork@foxmail.com", "ihhmovyrtnlxicgc");
	    trans.sendMessage(msg, msg.getAllRecipients());  
	}
}
