package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.ChengSSD;

import java.util.List;

public interface ChengSSDMapper {
    List<JSONObject> selectAll(ChengSSD css);
    int delete(@Param("name") String name);
    int update(ChengSSD ckb);
    int insert(ChengSSD ckb);
}
