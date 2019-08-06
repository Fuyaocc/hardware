package site.suimu.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	
	//factory实例化得过程是一个比较耗费性能 得过程
	//保证有且有一个factory
	
	private static SqlSessionFactory factory;
	private static ThreadLocal<SqlSession> tl = new ThreadLocal<>(); 
	
	
	static{
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream("mybatis.xml");
			factory = new SqlSessionFactoryBuilder().build(inputStream);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 获取SqlSession
	 */
	
	public static SqlSession getSession() {
		SqlSession session = tl.get();
		if(session==null)
		{
			tl.set(factory.openSession());
		}
		return tl.get();
	}
	
	public static void  closeSession() {
		SqlSession session = tl.get();
		if(session!=null)
		{
			session.close();
		}
		tl.set(null);
	}
	

}
