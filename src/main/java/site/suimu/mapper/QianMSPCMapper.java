package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.*;
import site.suimu.pojo.QianMSPC;

import java.util.List;
import java.lang.String;

public interface QianMSPCMapper {
    List<JSONObject> selectAll(QianMSPC qianMSPC);

    int insertQianMSPC(QianMSPC qianMSPC);

    int deleteQianMSPCById(@Param("phone") String phone, @Param("id") int id);

    int updateQianMSPC(QianMSPC qianMSPC);
}
