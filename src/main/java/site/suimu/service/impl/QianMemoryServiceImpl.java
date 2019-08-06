package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.QianMemoryMapper;
import site.suimu.pojo.QianMemory;
import site.suimu.service.QianMemoryService;
import site.suimu.service.QianMemoryService;
import site.suimu.util.MyBatisUtil;

@Service
public class QianMemoryServiceImpl implements QianMemoryService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    QianMemoryMapper qianMemoryMapper;
    List<JSONObject> array;
    int status = 0;


    private QianMemoryMapper getMapper() {
        session =  MyBatisUtil.getSession();
        qianMemoryMapper = session.getMapper(QianMemoryMapper.class);
        return qianMemoryMapper;
    }


    @Override
    public JSONObject selAll(QianMemory qianMemory) {
        array = getMapper().selectAll(qianMemory);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String insertQianMemory(QianMemory qianMemory) {
        status  = getMapper().insertQianMemory(qianMemory);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String deleteQianMemory(String phone, int id) {
        status  = getMapper().deleteQianMemoryById(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String updateQianMemory(QianMemory qianMemory) {
        status  = getMapper().updateQianMemory(qianMemory);
        if(status>0)
        {
            return UPDATE_SUCCESS;
        }else {
            return UPDATE_FAILED;
        }
    }

}
