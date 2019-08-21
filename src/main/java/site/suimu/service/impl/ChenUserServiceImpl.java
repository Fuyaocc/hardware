package site.suimu.service.impl;

import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import site.suimu.mapper.ChenUserMapper;
import site.suimu.pojo.ChenUser;
import site.suimu.service.ChenUserService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ChenUserServiceImpl implements ChenUserService {

    List<JSONObject> array;
    JSONObject jsonObject = new JSONObject();
    @Resource
    ChenUserMapper chenusermapper;



    public int delete(String phone) {
        int result = chenusermapper.delete(phone);
        return result;
    }

    public String update(ChenUser chenuser) {
		System.out.println(chenuser);
        int result = chenusermapper.update(chenuser);
        return result > 0 ? UPDATE_SUCCESS : UPDATE_FAILED;
    }

    public String insert(ChenUser chenuser) {
        int result = chenusermapper.insert(chenuser);
        return result > 0 ? INSERT_SUCCESS : INSERT_FAILED;
    }

    public JSONObject select(String phone) {
        jsonObject = chenusermapper.select(phone);
        return jsonObject;
    }

    @Override
    public JSONObject selAll() {
        array = chenusermapper.selectAll();
        jsonObject.put("list", array);
        return jsonObject;
    }
}
