package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.XuNetworkCardMapper;
import site.suimu.pojo.XuNetworkCard;
import site.suimu.service.XuNetworkCardService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuNetworkCardServiceImpl implements XuNetworkCardService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuNetworkCardMapper xuNetworkCardMapper;
    List<JSONObject> array;
    int status;

    private XuNetworkCardMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuNetworkCardMapper = session.getMapper(XuNetworkCardMapper.class);
        return xuNetworkCardMapper;
    }

    @Override
    public String insertInto(XuNetworkCard xuNetworkCard) {
        status=getMapper().insertInto(xuNetworkCard);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(XuNetworkCard xuNetworkCard) {
        status=getMapper().update(xuNetworkCard);
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
    public JSONObject selectAll(XuNetworkCard xuNetworkCard) {
        array=getMapper().selectAll(xuNetworkCard);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
