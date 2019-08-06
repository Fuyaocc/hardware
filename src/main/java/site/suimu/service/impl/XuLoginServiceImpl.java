package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import site.suimu.mapper.XuLoginMapper;
import site.suimu.mapper.XuRegisteMapper;
import site.suimu.pojo.XuLogin;
import site.suimu.service.XuLoginService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuLoginServiceImpl implements XuLoginService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuLoginMapper xuLoginMapper;
    JSONObject jsonObject;
    int status;

    private XuLoginMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuLoginMapper = session.getMapper(XuLoginMapper.class);
        return xuLoginMapper;
    }

    @Override
    public String selOne(String phone,String password) {
        jsonObj = getMapper().selectOne(phone,password);
        //System.out.println(jsonObj);
        if(jsonObj!=null) {
            return SELECT_SUCCESS;
        }
        else
        {
            return SELECT_FAILED;
        }
    }

    /*@Override
    public int updateSessionid(String phone,String sessionid) {
        status=getMapper().updateSessionid(phone,sessionid);
        if(status>0)
            return 1;
        else
            return -1;
    }*/




}
