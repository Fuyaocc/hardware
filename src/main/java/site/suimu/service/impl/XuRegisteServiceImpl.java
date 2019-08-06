package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.ChengPeopleMapper;
import site.suimu.mapper.XuRegisteMapper;
import site.suimu.pojo.XuLogin;
import site.suimu.service.XuRegisteService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuRegisteServiceImpl implements XuRegisteService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuRegisteMapper xuRegisteMapper;
    List<JSONObject> array;
    int status = 0;

    private XuRegisteMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuRegisteMapper = session.getMapper(XuRegisteMapper.class);
        return xuRegisteMapper;
    }

    @Override
    public String selOne(String phone) {
        array = getMapper().selectOne(phone);
        if(array==null)
        {
            return INSERT_SUCCESS;
        }
        else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String insertXuLogin(XuLogin xuLogin) {
        status=getMapper().insertXuLogin(xuLogin);
        if(status>0&&selOne(xuLogin.getPhone()).equals(INSERT_SUCCESS))
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }
}
