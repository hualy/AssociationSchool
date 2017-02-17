package com.xyz.tools;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LogTool {

	
	/*
	 * 根据指定类生成Log对象并返回
	 */
	public static Log getThelog(Class clazz){
		
		return LogFactory.getLog(clazz);
	}
}
