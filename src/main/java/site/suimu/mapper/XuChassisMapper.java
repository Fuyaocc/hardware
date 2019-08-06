package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.XuChassis;

import java.util.List;

public interface XuChassisMapper {
    List<JSONObject> selectAll(XuChassis xuChassis);
    int insertInto(XuChassis xuChassis);
    int update(XuChassis xuChassis);
    int delete(@Param("phone") String phone, @Param("id") int id);
}
