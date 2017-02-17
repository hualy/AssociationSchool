package com.xyz.tools;

import java.security.MessageDigest;
import sun.misc.BASE64Encoder;

public class MD5Tools {

	
	public static void main(String[] args) {
		
		System.out.println(EncoderByMd5("123"));
	}
	
	
    /**利用MD5进行加密
     * @author LYH
     * @param str  待加密的字符串
     * @return  加密后的字符串
     */
    public static String EncoderByMd5(String str){
        //确定计算方法
        MessageDigest md5;
        String newstr = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
	        BASE64Encoder base64en = new BASE64Encoder();
	        //加密后的字符串
	        newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
        return newstr;
    }
    
    /**判断用户密码是否正确
     * @author LYH
     * @param newpasswd  用户输入的密码
     * @param oldpasswd  数据库中存储的密码－－用户密码的摘要
     * @return
     */
    public static boolean checkpassword(String newpasswd,String oldpasswd){
        if(EncoderByMd5(newpasswd).equals(oldpasswd))
            return true;
        else
            return false;
    }
}
