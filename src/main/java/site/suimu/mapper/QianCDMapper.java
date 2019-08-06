package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.*;
import site.suimu.pojo.QianCD;

import java.util.List;
import java.lang.String;

public interface QianCDMapper {
    List<JSONObject> selectAll(QianCD qianCD);

    int insertQianCD(QianCD qianCD);

    int deleteQianCDById(@Param("phone") String phone, @Param("id") int id);

    int updateQianCD(QianCD qianCD);
}
