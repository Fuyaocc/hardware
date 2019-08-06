package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.XuChangePasswordMapper;
import site.suimu.service.XuChangePasswordService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;

public class XuChangePasswordServiceImpl implements XuChangePasswordService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuChangePasswordMapper xuChangePasswordMapper;
    int status;

    private XuChangePasswordMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuChangePasswordMapper = session.getMapper(XuChangePasswordMapper.class);
        return xuChangePasswordMapper;
    }

    @Override
    public int updatePassword(String phone, String password) {
        status=getMapper().updatePassword(phone,password);
        return status;
    }
}
