package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.Wang_UDiskMapper;
import site.suimu.pojo.Wang_UDisk;
import site.suimu.service.Wang_UDiskService;
import site.suimu.util.MyBatisUtil;

@Service
public class Wang_UDiskServiceImpl implements Wang_UDiskService{


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    Wang_UDiskMapper wang_UDiskMapper;
    List<JSONObject> array;
    int status = 0;


    private Wang_UDiskMapper getMapper() {
        session =  MyBatisUtil.getSession();
        wang_UDiskMapper = session.getMapper(Wang_UDiskMapper.class);
        return wang_UDiskMapper;
    }


    @Override
    public JSONObject selAll(Wang_UDisk wang_UDisk) {
        array = getMapper().selectAll(wang_UDisk);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String insertWang_UDisk(Wang_UDisk wang_UDisk) {
        status  = getMapper().insertWang_UDisk(wang_UDisk);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String deleteWang_UDisk(String phone, int id) {
        status  = getMapper().deleteWang_UDiskById(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String updateWang_UDisk(Wang_UDisk wang_UDisk) {
        status  = getMapper().updateWang_UDisk(wang_UDisk);
        if(status>0)
        {
            return UPDATE_SUCCESS;
        }else {
            return UPDATE_FAILED;
        }
    }
}
