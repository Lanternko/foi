package me.zhengjie.utils;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 * 使用javamail api寄出電子信件
 */
public class EmailUtil {
	
	/**
	 * 使用javamail api寄出電子信件，詳細參數請見EmailUtil class內main方法的測試用參數
	 */
	public static void send(Map<String, String> params) throws SendFailedException, AddressException, MessagingException {
		Properties prop = new Properties();
		prop.put("mail.smtp.host", params.get("host"));
		prop.put("mail.smtp.port", params.get("port"));
		prop.put("mail.smtp.ssl.trust", params.get("host"));
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.auth", "true");
				
		Session session = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(params.get("user"), params.get("pw"));
			}
		});
		
//		組合multipart
		Multipart multi = new MimeMultipart();
//		內容部分
		BodyPart htmlPart = new MimeBodyPart();
		htmlPart.setContent(params.get("content"), "text/html;charset=utf-8");
		multi.addBodyPart(htmlPart);
		for (String file : params.get("attachments").split(",")) {
			if (file.isEmpty()) {
				continue;
			}
//			檔案部分
			BodyPart filePart = new MimeBodyPart();
			DataSource attachment = new FileDataSource(file);
			filePart.setDataHandler(new DataHandler(attachment));
			filePart.setFileName(file.substring(file.lastIndexOf(File.separator) + 1));			
			multi.addBodyPart(filePart);
		}
		
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(params.get("from")));
		msg.setSubject(params.get("subject"));
		msg.setContent(multi);
		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(params.get("to")));
		msg.setRecipients(Message.RecipientType.CC, InternetAddress.parse(params.get("cc")));
		msg.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(params.get("bcc")));

		Transport.send(msg);
	}
	
//  -------------------------------------------------------------------------
//	寄信工具測試
	public static void main(String[] args) {
		@SuppressWarnings("serial")
		Map<String, String> params = new HashMap<String, String>() {{
			put("host", "smtp.gmail.com");			// 用gmail做測試
			put("port", "587");						// gmail的smyp port
			put("user", "andy.song@ezcore.tw");
			put("pw", "fhxkqofbfvaquxzz");			// 目前是我公司mail的app password
			put("from", "foi@test.tw");
			put("subject", "測試標題");
			put("content", "<p>這是javamail寄出的測試信</p><br/><h1><strong>這行應該要在第二行，而且有吃到html標籤</strong></h1>");
			put("to", "aalexxyobdc@gmail.com,andy.song@ezcore.tw");
			put("cc", "");
			put("bcc", "");
			put("attachments", "C:\\vmShare\\測試檔案.txt,C:\\vmShare\\測試檔案 - 複製.txt");
			put("fromapi", "test");
			put("scheduled", "false");
		}};
		
		try {
			send(params);
			System.out.println("寄出成功");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
}
