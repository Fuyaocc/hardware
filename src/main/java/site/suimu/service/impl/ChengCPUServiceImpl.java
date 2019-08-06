package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.ChengCPUMapper;
import site.suimu.pojo.ChengCPU;
import site.suimu.service.ChengCPUService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 */
public class ChengCPUServiceImpl implements ChengCPUService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    ChengCPUMapper chengCPUMapper;
    List<JSONObject> array;
    int status = 0;


    private ChengCPUMapper getMapper() {
        session =  MyBatisUtil.getSession();
        chengCPUMapper = session.getMapper(ChengCPUMapper.class);
        return chengCPUMapper;
    }
    

    @Override
    public JSONObject selectCPU(ChengCPU chengCPU) {
        array = getMapper().selectCPU(chengCPU);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String deleteCPU(int id) {
        status  = getMapper().deleteCPU(id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String insertCPU(ChengCPU chengCPU) {
        status  = getMapper().insertCPU(chengCPU);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }
}
