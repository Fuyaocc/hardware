package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import site.suimu.mapper.ChenUserMapper;
import site.suimu.mapper.ChengPeopleMapper;
import site.suimu.mapper.XuRegisteMapper;
import site.suimu.pojo.ChenUser;
import site.suimu.pojo.XuLogin;
import site.suimu.service.XuRegisteService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;


@Service
public class XuRegisteServiceImpl implements XuRegisteService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuRegisteMapper xuRegisteMapper;

    @Resource
    ChenUserMapper chenUserMapper;
    List<JSONObject> array;
    int status = 0;


    @Override
    public String selOne(String phone) {
        array = xuRegisteMapper.selectOne(phone);
        if (array == null) {
            return INSERT_SUCCESS;
        } else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String insertXuLogin(XuLogin xuLogin) {
        ChenUser chenUser = new ChenUser();
        chenUser.setPhone(xuLogin.getPhone());
        status = xuRegisteMapper.insertXuLogin(xuLogin);
        if(status>0){
            status = chenUserMapper.insert(chenUser);
        }
        if (status > 0 && selOne(xuLogin.getPhone()).equals(INSERT_SUCCESS)) {
            return INSERT_SUCCESS;
        } else {
            return INSERT_FAILED;
        }
    }
}
