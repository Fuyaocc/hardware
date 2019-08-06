package site.suimu.test;


import net.sf.json.JSONObject;
import netscape.javascript.JSObject;
import org.apache.ibatis.session.SqlSession;

import site.suimu.pojo.WangCamera;
import site.suimu.pojo.ChenUser;
import site.suimu.service.WangCameraService;
import site.suimu.service.ChenUserService;
import site.suimu.service.impl.WangCameraServiceImpl;
import site.suimu.service.impl.ChenKeyboardServiceImpl;
import site.suimu.service.impl.ChenUserServiceImpl;
import site.suimu.util.MyBatisUtil;

import java.util.List;

public class ChenTest {




	public static void main(String args[])
	{
		WangCameraService csi=new WangCameraServiceImpl();
		JSONObject jsonObject;
		SqlSession session = MyBatisUtil.getSession();
		System.out.println("获取数据库连接");
		System.out.println("session  "+session);
		WangCamera cu = new WangCamera();
		ChenUserService chenUserService = new ChenUserServiceImpl();
		cu.setBrand("123");
		try {
			jsonObject = chenUserService.selAll();
			System.out.println(jsonObject);
			session.commit();
		}catch(Exception e)
		{
			session.rollback();
			e.printStackTrace();
		}finally {
			MyBatisUtil.closeSession();
			System.out.println("链接关闭");
		}
	}
}



