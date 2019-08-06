package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.ChengSSDMapper;
import site.suimu.pojo.ChengSSD;
import site.suimu.service.ChengSSDService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class ChengSSDServiceImpl implements ChengSSDService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    ChengSSDMapper chengSSDMapper;
    List<JSONObject> array;
    int status;

    private ChengSSDMapper getMapper() {
        session =  MyBatisUtil.getSession();
        chengSSDMapper = session.getMapper(ChengSSDMapper.class);
        return chengSSDMapper;
    }

    @Override
    public String insertInto(ChengSSD chengSSD) {
        status=getMapper().insert(chengSSD);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(ChengSSD chengSSD) {
        status=getMapper().update(chengSSD);
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
    public String delete(String name) {
        status=getMapper().delete(name);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }
        else {
            return DELETE_FAILED;
        }

    }

    @Override
    public JSONObject selectAll(ChengSSD chengSSD) {
        array=getMapper().selectAll(chengSSD);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
