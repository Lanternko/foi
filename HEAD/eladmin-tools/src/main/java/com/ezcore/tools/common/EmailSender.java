package com.ezcore.tools.common;

import java.io.File;
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
public class EmailSender {
	
	/**
	 * 使用javamail api寄出電子信件
	 * @param params 參數map裡需包含以下key : value資訊 <br>
	 * host : 信件伺服器網址 <br>
	 * port : host所在port <br>
	 * user : 寄件者帳號 <br>
	 * pw : 寄件者密碼(或api key) <br>
	 * subject : 信件標題 <br>
	 * content : 信件內容 (可包含html標籤) <br>
	 * from : 寄件人 <br>
	 * to : 收件人，複數時以逗號區隔 (e.g. mail1,mail2,mail3...) <br>
	 * cc : 副本，複數時以逗號區隔 (e.g. mail1,mail2,mail3...) <br>
	 * bcc : 密件副本，複數時以逗號區隔 (e.g. mail1,mail2,mail3...) <br>
	 * attachment : 附件，複數時以逗號區隔 (e.g. att1,att2,att3...) <br>
	 * @throws MessagingException 
	 * @throws SendFailedException 
	 * @throws AddressException 
	 */
	public static void send(Map<String, String> params) throws AddressException, SendFailedException, MessagingException {
		send(params, false);
	}
	
	/**
	 * 功能、參數完全同send()<br>
	 * 差別在信不會真的寄出(用Thread.sleep模擬等待時間)<br>
	 * 測試用 
	 */
	public static void sendEmulate(Map<String, String> params) throws AddressException, SendFailedException, MessagingException {
		send(params, true);
	}	

	private static void send(Map<String, String> params, boolean isEmulation) throws SendFailedException, AddressException, MessagingException {
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

		if (isEmulation) {
			try {
				Thread.sleep(3000);
				System.out.println("to開發者: (模擬)寄信成功! 如果要寄真的，請使用send()方法");
			} catch (InterruptedException e) {
				e.printStackTrace();
			}			
		} else {
			Transport.send(msg);			
		}
	}
}
