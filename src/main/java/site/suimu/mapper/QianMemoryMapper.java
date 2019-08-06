package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.*;
import site.suimu.pojo.QianMemory;

import java.util.List;
import java.lang.String;

public interface QianMemoryMapper {

    List<JSONObject> selectAll(QianMemory qianMemory);

    int insertQianMemory(QianMemory qianMemory);

    int deleteQianMemoryById(@Param("phone") String phone, @Param("id") int id);

    int updateQianMemory(QianMemory qianMemory);
}
