package site.suimu.test;

import com.sun.corba.se.impl.orbutil.concurrent.Sync;
import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChengCPU;
import site.suimu.service.ChenUserService;
import site.suimu.service.ChengCPUService;
import site.suimu.service.impl.ChenUserServiceImpl;
import site.suimu.service.impl.ChengCPUServiceImpl;
import site.suimu.service.impl.ChengPeopleServiceImpl;
import site.suimu.util.MyBatisUtil;

public class ChengTest {
	
	
	ChengPeopleServiceImpl chengPeopleServiceImpl = new ChengPeopleServiceImpl();

	ChengCPUService chengCPUService = new ChengCPUServiceImpl();
	ChenUserService chenUserService = new ChenUserServiceImpl();
	
	public static void main(String[] args) {
		ChengTest test =new ChengTest();
		SqlSession session = MyBatisUtil.getSession();
		System.out.println("获取数据库连接");
		System.out.println("session     "+session);
		 try {
		 	test.selectUser();
			 session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			MyBatisUtil.closeSession();
			System.out.println("数据库连接关闭");
		}	
	}
	
	
	private JSONObject selChengPeople()
	{
		return chengPeopleServiceImpl.selAll();
	}


	private void  selectChengCPU() {

		ChengCPU chengCPU = new ChengCPU();
		JSONObject object = new JSONObject();
		chengCPU.setPrice("500");
		object =  chengCPUService.selectCPU(chengCPU);
		System.out.println(object);
	}

	private  void insertChengCPU(){
		ChengCPU chengCPU = new ChengCPU();
		JSONObject object = new JSONObject();
		String aaa;
		chengCPU.setPrice("500");
		chengCPU.setPhone("asdasd");
		chengCPU.setCoreCounts("十六核心");
		chengCPU.setBrand("AMD");
		chengCPU.setSlotType("Socket TR4");
		chengCPU.setGrade("8.5");
		chengCPU.setLink("aaa");
		aaa  =  chengCPUService.insertCPU(chengCPU);
		System.out.println(aaa);
	}

	private void selectUser(){
		System.out.println(chenUserService.selAll());
	}
}
