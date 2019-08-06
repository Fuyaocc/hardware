package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.XuLogin;


public interface XuLoginService {

    String SELECT_SUCCESS = "登陆成功";

    String SELECT_FAILED = "用户名不存在";

    String selOne(String phone, String password);

    //int updateSessionid(String phone,String sessionid);

}
