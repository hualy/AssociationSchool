package com.xyz.tools;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailTools {
	
	/**注册时发送邮件激活注册
	 * @author LYH
	 * @Method: sendMail
	 * @param emaile 邮箱地址
	 */
	public static void sendRegisterMail(String email,String identity){
		
		Properties prop = new Properties();
		prop.setProperty("mail.host", "smtp.163.com");
		prop.setProperty("mail.transport.protocol", "smtp");
		prop.setProperty("mail.smtp.auth", "true");
		//使用JavaMail发送邮件的5个步骤
		//1、创建session
		Session session = Session.getInstance(prop);
		//开启Session的debug模式，这样就可以查看到程序发送Email的运行状态
		session.setDebug(true);
		//2、通过session得到transport对象
		Transport ts;
		try {
			ts = session.getTransport();
			//3、使用邮箱的用户名和密码连上邮件服务器，发送邮件时，发件人需要提交邮箱的用户名和密码给smtp服务器，用户名和密码都通过验证之后才能够正常发送邮件给收件人。
			ts.connect("smtp.163.com", "lyh60153", "as6891796l");
			//4、创建邮件
			Message message = null;
			if(identity.equals("member")){
				message = createMemberRegistergMail(session,email);
			}else{
				message = createAdminRegistergMail(session, email);
			}
			//5、发送邮件
			ts.sendMessage(message, message.getAllRecipients());
			ts.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	/**密码找回邮件发送
	 * @author LYH
	 * @param email 邮件地址
	 * @param identity 身份
	 * @return
	 */
	public static void sendMailForPassword(String email,String identity){
		
		Properties prop = new Properties();
		prop.setProperty("mail.host", "smtp.163.com");
		prop.setProperty("mail.transport.protocol", "smtp");
		prop.setProperty("mail.smtp.auth", "true");
		//使用JavaMail发送邮件的5个步骤
		//1、创建session
		Session session = Session.getInstance(prop);
		//开启Session的debug模式，这样就可以查看到程序发送Email的运行状态
		session.setDebug(true);
		//2、通过session得到transport对象
		Transport ts;
		try {
			ts = session.getTransport();
			//3、使用邮箱的用户名和密码连上邮件服务器，发送邮件时，发件人需要提交邮箱的用户名和密码给smtp服务器，用户名和密码都通过验证之后才能够正常发送邮件给收件人。
			ts.connect("smtp.163.com", "lyh60153", "as6891796l");
			//4、创建邮件
			Message message = null;
			message = createPasswordRetrievalMail(session, email,identity);

			//5、发送邮件
			ts.sendMessage(message, message.getAllRecipients());
			ts.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**创建一封密码修改邮件
	 * @author LYH
	 * @param session 
	 * @param email 邮件地址
	 * @return {@link MimeMessage}
	 */
	public static MimeMessage createPasswordRetrievalMail(Session session,String email,String identity)
    throws Exception {
		//创建邮件对象
		MimeMessage message = new MimeMessage(session);
		//指明邮件的发件人
		message.setFrom(new InternetAddress("lyh60153@163.com"));
		//指明邮件的收件人
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
		//邮件的标题
		message.setSubject("密码找回邮件");
		
		//邮件的文本内容
		StringBuffer sbd = new StringBuffer();
		sbd.append("<br/>欢迎!请确认此邮件地址以找回您的密码.<br/>");
		sbd.append("<font color='red'><a href='http://localhost:8080/association/universal/这里应该有个新页面?email="
				    + email +"&identity="+identity +"'");
		sbd.append(">立即激活</a></font><br/>");
		sbd.append("这是一封自动发送的邮件;如果您并未要求但收到这封信件,您不需要进行任何操作.");
		message.setContent(sbd.toString(), "text/html;charset=UTF-8");
		//返回创建好的邮件对象
		return message;
	}
	
	
	
    /**创建一封给部门成员激活帐号的邮件
     * @author LYH
     * @param session
	 * @return {@link MimeMessage}
	 */ 
	public static MimeMessage createMemberRegistergMail(Session session,String email)
	            throws Exception {
		//创建邮件对象
		MimeMessage message = new MimeMessage(session);
		//指明邮件的发件人
		message.setFrom(new InternetAddress("lyh60153@163.com"));
		//指明邮件的收件人
	    message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
	    //邮件的标题
	    message.setSubject("注册邮件");
	    
	    //邮件的文本内容
	    String accode = MD5Tools.EncoderByMd5(email);
	    StringBuffer sbd = new StringBuffer();
        sbd.append("<br/>欢迎!请确认此邮件地址以激活您的账号.<br/>");
        sbd.append("<font color='red'><a href='http://localhost:8080/association/member/memberActivated?email="
                + email + "&activationCode="+accode+"'");
        sbd.append(">立即激活</a></font><br/>");
        sbd.append("这是一封自动发送的邮件;如果您并未要求但收到这封信件,您不需要进行任何操作.");
	    message.setContent(sbd.toString(), "text/html;charset=UTF-8");
	    //返回创建好的邮件对象
	    return message;
	}
	
    /**创建一封给部门成员激活帐号的邮件
     * @author LYH
     * @param session
	 * @return {@link MimeMessage}
	 */ 
	public static MimeMessage createAdminRegistergMail(Session session,String email)
	            throws Exception {
		//创建邮件对象
		MimeMessage message = new MimeMessage(session);
		//指明邮件的发件人
		message.setFrom(new InternetAddress("lyh60153@163.com"));
		//指明邮件的收件人
	    message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
	    //邮件的标题
	    message.setSubject("注册邮件");
	    
	    //邮件的文本内容
	    String accode = MD5Tools.EncoderByMd5(email);
	    StringBuffer sbd = new StringBuffer();
        sbd.append("<br/>欢迎!请确认此邮件地址以激活您的账号.<br/>");
        sbd.append("<font color='red'><a href='http://localhost:8080/association/administrator/adminActivated?email="
                + email + "&activationCode="+accode+"'");
        sbd.append(">立即激活</a></font><br/>");
        sbd.append("这是一封自动发送的邮件;如果您并未要求但收到这封信件,您不需要进行任何操作.");
	    message.setContent(sbd.toString(), "text/html;charset=UTF-8");
	    //返回创建好的邮件对象
	    return message;
	}
	
}
