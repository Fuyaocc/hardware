package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.XuLogin;

public interface XuRegisteService {

    String INSERT_SUCCESS = "注册成功";

    String INSERT_FAILED = "注册失败";

    String selOne(String phone);

    // 新建一个
    String insertXuLogin(XuLogin xuLogin);
}
