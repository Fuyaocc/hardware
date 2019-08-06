package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.XuChassis;
import site.suimu.pojo.XuMotherBoard;

import java.util.List;

public interface XuMotherBoardMapper {
    List<JSONObject> selectAll(XuMotherBoard xuMotherBoard);
    int insertInto(XuMotherBoard xuMotherBoard);
    int update(XuMotherBoard xuMotherBoard);
    int delete(@Param("name") String name);
}
