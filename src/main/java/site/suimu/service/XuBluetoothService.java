package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.XuBluetooth;

import java.util.List;

public interface XuBluetoothService {
    String INSERT_SUCCESS = "成功添加";

    String INSERT_FAILED = "添加失败";

    String DELETE_SUCCESS = "删除成功";

    String DELETE_FAILED = "删除失败";

    String UPDATE_SUCCESS = "更新成功";

    String UPDATE_FAILED = "更新失败";

    String insertInto(XuBluetooth xuBluetooth);
    String update(XuBluetooth xuBluetooth);
    String delete(String phone, int id);
    JSONObject selectAll(XuBluetooth xuBluetooth);
}
