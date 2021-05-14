package com.edu.look.util;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

/*import javax.maiml.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
*/
@Service
public class MailUtil {
	public static String myEmailAccount="15181323357@163.com";
	public static String myEmailPassword="a1621584495";
	public static String myEmailSMTPHost = "smtp.163.com";
	//public static String myEmailSMTPHost = "pop.163.com";
	public static void sendEmail(String toAddress,String Content,String Tile){
		Properties props=new Properties();
		props.setProperty("mail.transport.protocol", "smtp");   
        props.setProperty("mail.smtp.host", myEmailSMTPHost);
        props.setProperty("mail.smtp.auth", "true");
		Session session=Session.getDefaultInstance(props);
		session.setDebug(true);
		try {
			MimeMessage message=CreateMessage(session, myEmailAccount, toAddress, Content, Tile);
			Transport transport=session.getTransport();
			transport.connect(myEmailAccount,myEmailPassword);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static MimeMessage CreateMessage(Session session,String fromAddress,String toAddress,String Content,String title){
		MimeMessage message=new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(fromAddress,"Look圈！","UTF-8"));
			message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(toAddress,"用户","UTF-8"));
			message.setSubject(title);
			message.setContent(Content, "text/html;charset=UTF-8");
			message.setSentDate(new Date());
			message.saveChanges();
		} catch (UnsupportedEncodingException | MessagingException e) {
			e.printStackTrace();
		}
		return message;
	}
	
	public static String makeEmailContent(){
		
		return "";
	}
	
	public static void main(String[] args) {
		//sendEmail("13198200573@163.com", "鎮ㄧ殑娉ㄥ唽楠岃瘉鐮佷负154864", "娉ㄥ唽楠岃瘉鐮�");
	}
}

