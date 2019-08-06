package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.XuChassisMapper;
import site.suimu.pojo.XuChassis;
import site.suimu.service.XuChassisService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuChassisServiceImpl implements XuChassisService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuChassisMapper xuChassisMapper;
    List<JSONObject> array;
    int status;

    private XuChassisMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuChassisMapper = session.getMapper(XuChassisMapper.class);
        return xuChassisMapper;
    }

    @Override
    public String insertInto(XuChassis xuChassis) {
        status=getMapper().insertInto(xuChassis);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(XuChassis xuChassis) {
        status=getMapper().update(xuChassis);
        if(status>0)
        {
            return UPDATE_SUCCESS;
        }
        else
        {
            return UPDATE_FAILED;
        }
    }

    @Override
    public String delete(String phone, int id) {
        status=getMapper().delete(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }
        else {
            return DELETE_FAILED;
        }

    }

    @Override
    public JSONObject selectAll(XuChassis xuChassis) {
        array=getMapper().selectAll(xuChassis);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
