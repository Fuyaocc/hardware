package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.QianCDMapper;
import site.suimu.pojo.QianCD;
import site.suimu.service.QianCDService;
import site.suimu.util.MyBatisUtil;

@Service
public class QianCDServiceImpl implements QianCDService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    QianCDMapper qianCDMapper;
    List<JSONObject> array;
    int status = 0;


    private QianCDMapper getMapper() {
        session =  MyBatisUtil.getSession();
        qianCDMapper = session.getMapper(QianCDMapper.class);
        return qianCDMapper;
    }


    @Override
    public JSONObject selAll(QianCD qianCD) {
        array = getMapper().selectAll(qianCD);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String insertQianCD(QianCD qianCD) {
        status  = getMapper().insertQianCD(qianCD);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String deleteQianCD(String phone, int id) {
        status  = getMapper().deleteQianCDById(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String updateQianCD(QianCD qianCD) {
        status  = getMapper().updateQianCD(qianCD);
        if(status>0)
        {
            return UPDATE_SUCCESS;
        }else {
            return UPDATE_FAILED;
        }
    }
}
