package site.suimu.service.impl;

import net.sf.json.JSONObject;
import org.apache.ibatis.session.SqlSession;
import site.suimu.mapper.XuBluetoothMapper;
import site.suimu.pojo.XuBluetooth;
import site.suimu.service.XuBluetoothService;
import site.suimu.util.MyBatisUtil;

import javax.annotation.Resource;
import java.util.List;

public class XuBluetoothServiceImpl implements XuBluetoothService {


    JSONObject jsonObj = new JSONObject();
    SqlSession session;
    @Resource
    XuBluetoothMapper xuBluetoothMapper;
    List<JSONObject> array;
    int status;

    private XuBluetoothMapper getMapper() {
        session =  MyBatisUtil.getSession();
        xuBluetoothMapper = session.getMapper(XuBluetoothMapper.class);
        return xuBluetoothMapper;
    }

    @Override
    public String insertInto(XuBluetooth xuBluetooth) {
        status=getMapper().insertInto(xuBluetooth);
        if(status>0)
        {
            return INSERT_SUCCESS;
        }else
        {
            return INSERT_FAILED;
        }
    }

    @Override
    public String update(XuBluetooth xuBluetooth) {
        status=getMapper().update(xuBluetooth);
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
    public String delete(String phone, int id) {
        status=getMapper().delete(phone,id);
        if(status>0)
        {
            return DELETE_SUCCESS;
        }
        else {
            return DELETE_FAILED;
        }

    }

    @Override
    public JSONObject selectAll(XuBluetooth xuBluetooth) {
        array=getMapper().selectAll(xuBluetooth);
        jsonObj.put("list",array);
        return jsonObj;
    }
}
