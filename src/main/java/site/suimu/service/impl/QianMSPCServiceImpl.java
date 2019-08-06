package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.QianMSPCMapper;
import site.suimu.pojo.QianMSPC;
import site.suimu.service.QianMSPCService;
import site.suimu.util.MyBatisUtil;

@Service
public class QianMSPCServiceImpl implements QianMSPCService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    QianMSPCMapper qianMSPCMapper;
    List<JSONObject> array;
    int status = 0;


    private QianMSPCMapper getMapper() {
        session = MyBatisUtil.getSession();
        qianMSPCMapper = session.getMapper(QianMSPCMapper.class);
        return qianMSPCMapper;
    }


    @Override
    public JSONObject selAll(QianMSPC qianMSPC) {
        array = getMapper().selectAll(qianMSPC);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String insertQianMSPC(QianMSPC qianMSPC) {
        status = getMapper().insertQianMSPC(qianMSPC);
        if (status > 0) {
            return INSERT_SUCCESS;
        } else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String deleteQianMSPC(String phone, int id) {
        status = getMapper().deleteQianMSPCById(phone, id);
        if (status > 0) {
            return DELETE_SUCCESS;
        } else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String updateQianMSPC(QianMSPC qianMSPC) {
        status = getMapper().updateQianMSPC(qianMSPC);
        if (status > 0) {
            return UPDATE_SUCCESS;
        } else {
            return UPDATE_FAILED;
        }
    }
}
