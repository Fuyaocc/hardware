package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.*;
import site.suimu.pojo.QianMouse;

import java.util.List;
import java.lang.String;

public interface QianMouseMapper {
    List<JSONObject> selectAll(QianMouse qianMouse);

    int insertQianMouse(QianMouse qianMouse);

    int deleteQianMouseById(@Param("phone") String phone, @Param("id") int id);

    int updateQianMouse(QianMouse qianMouse);
}
