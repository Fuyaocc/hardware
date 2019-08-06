package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.XuMotherBoardMapper;
import site.suimu.pojo.XuMotherBoard;
import site.suimu.service.XuMotherBoardService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuMotherBoardServiceImpl implements XuMotherBoardService {

    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuMotherBoardMapper xuMotherBoardMapper;
    List<JSONObject> array;
    int status;

    private XuMotherBoardMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuMotherBoardMapper = session.getMapper(XuMotherBoardMapper.class);
        return xuMotherBoardMapper;
    }

    @Override
    public String insertInto(XuMotherBoard xuMotherBoard) {
        status=getMapper().insertInto(xuMotherBoard);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(XuMotherBoard xuMotherBoard) {
        status=getMapper().update(xuMotherBoard);
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
    public JSONObject selectAll(XuMotherBoard xuMotherBoard) {
        array=getMapper().selectAll(xuMotherBoard);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
