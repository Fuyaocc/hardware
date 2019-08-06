package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.XuBluetooth;

import java.util.List;

public interface XuBluetoothMapper {


    List<JSONObject> selectAll(XuBluetooth xuBluetooth);
    int insertInto(XuBluetooth xuBluetooth);
    int update(XuBluetooth xuBluetooth);
    int delete(@Param("phone") String phone, @Param("id") int id);
}
