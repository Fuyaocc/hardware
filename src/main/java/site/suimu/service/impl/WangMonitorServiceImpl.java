package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.WangMonitorMapper;
import site.suimu.pojo.WangMonitor;
import site.suimu.service.WangMonitorService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class WangMonitorServiceImpl implements WangMonitorService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    WangMonitorMapper wangMonitorMapper;
    List<JSONObject> array;
    int status;

    private WangMonitorMapper getMapper() {
        session =  MyBatisUtil.getSession();
        wangMonitorMapper = session.getMapper(WangMonitorMapper.class);
        return wangMonitorMapper;
    }

    @Override
    public String insertInto(WangMonitor wangMonitor) {
        status=getMapper().insertInto(wangMonitor);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(WangMonitor wangMonitor) {
        status=getMapper().update(wangMonitor);
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
    public JSONObject selectAll(WangMonitor wangMonitor) {
        array=getMapper().selectAll(wangMonitor);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
