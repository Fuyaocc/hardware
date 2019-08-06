package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.*;
import site.suimu.pojo.Wang_UDisk;

import java.util.List;
import java.lang.String;

public interface Wang_UDiskMapper {
    List<JSONObject> selectAll(Wang_UDisk wang_UDisk);

    int insertWang_UDisk(Wang_UDisk wang_UDisk);

    int deleteWang_UDiskById(@Param("phone") String phone, @Param("id") int id);

    int updateWang_UDisk(Wang_UDisk wang_UDisk);
}
