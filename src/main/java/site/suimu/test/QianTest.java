package site.suimu.test;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.pojo.QianMemory;
import site.suimu.service.QianMemoryService;
import site.suimu.service.impl.QianMemoryServiceImpl;
import site.suimu.util.MyBatisUtil;

public class QianTest {
    QianMemoryServiceImpl qianMemoryServiceImpl = new QianMemoryServiceImpl();
    QianMemory qianMemory = new QianMemory();

    public static void main(String[] args) {
       QianTest test =new QianTest();
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
        //String str = "{'MHZ':'', 'account': '' , 'aircooling' : 'waeawew' , 'brand' : 'axdasdasd' , 'img' : '' , 'name' : ' ' , 'phone' : '登录' , 'price' :  'asdasdas' , 'suittype' : '123335555' , 'type':'ewqeqw'}";
       // JSONObject json = JSONObject.fromObject(str);
        //qianMemory = (QianMemory) JSONObject.toBean(json,QianMemory.class);
        qianMemory.setPhone("1515");
        qianMemory.setBrand("dsdfa");
        System.out.println(qianMemoryServiceImpl.insertQianMemory(qianMemory));
    }
}
