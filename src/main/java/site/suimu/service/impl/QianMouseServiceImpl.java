package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.QianMouseMapper;
import site.suimu.pojo.QianMouse;
import site.suimu.service.QianMouseService;
import site.suimu.util.MyBatisUtil;

@Service
public class QianMouseServiceImpl implements QianMouseService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    QianMouseMapper qianMouseMapper;
    List<JSONObject> array;
    int status = 0;


    private QianMouseMapper getMapper() {
        session =  MyBatisUtil.getSession();
        qianMouseMapper = session.getMapper(QianMouseMapper.class);
        return qianMouseMapper;
    }


    @Override
    public JSONObject selAll(QianMouse qianMouse) {
        array = getMapper().selectAll(qianMouse);
        jsonObj.put("list", array);
        return jsonObj;
    }

    @Override
    public String insertQianMouse(QianMouse qianMouse) {
        status  = getMapper().insertQianMouse(qianMouse);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else {
            return INSERT_FAILED;
        }
    }

    @Override
    public String deleteQianMouse(String phone, int id) {
        status  = getMapper().deleteQianMouseById(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }else {
            return DELETE_FAILED;
        }
    }

    @Override
    public String updateQianMouse(QianMouse qianMouse) {
        status  = getMapper().updateQianMouse(qianMouse);
        if(status>0)
        {
            return UPDATE_SUCCESS;
        }else {
            return UPDATE_FAILED;
        }
    }

}
