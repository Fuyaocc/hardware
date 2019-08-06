package site.suimu.test;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.pojo.XuMotherBoard;
import site.suimu.service.XuLoginService;
import site.suimu.service.XuMotherBoardService;
import site.suimu.service.impl.XuLoginServiceImpl;
import site.suimu.service.impl.XuMotherBoardServiceImpl;
import site.suimu.util.MyBatisUtil;
import sun.security.util.Password;

/**
 *
 */
public class XuTest {

    XuMotherBoardService xuMotherBoardService=new XuMotherBoardServiceImpl();



    public static void main(String[] args) {
        XuTest test =new XuTest();
        SqlSession session = MyBatisUtil.getSession();
        System.out.println("获取数据库连接");
        System.out.println("session     "+session);
        try {
            System.out.println("--------结果如下-----------");
            //System.out.println(test.selAll());
            test.selAll();
            System.out.println("-------------------");
            session.commit();
        } catch (Exception e) {
            session.rollback();
            e.printStackTrace();
        }finally {
            MyBatisUtil.closeSession();
            System.out.println("数据库连接关闭");
        }
    }


    private void selAll()
    {
        //String phone = "xky123456";
        XuMotherBoard xuMotherBoard=new XuMotherBoard();
        xuMotherBoard.setPhone("15651665893");
        xuMotherBoard.setBrand("xxssxx");
        xuMotherBoard.setChip("qwewqe123");
        xuMotherBoard.setName("技嘉");
        xuMotherBoard.setPrice("6.9以上");
        //chenCamera.setNo(0);
        //xuMotherBoard.setName("12312wqe");
        System.out.println(xuMotherBoardService.delete("华硕"));

        //return

        //return xuLoginService.selOne(phone);
    }
}
