package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.WangMonitor;

import java.util.List;

public interface WangMonitorMapper {
    List<JSONObject> selectAll(WangMonitor wangMonitor);
    int insertInto(WangMonitor wangMonitor);
    int update(WangMonitor wangMonitor);
    int delete(@Param("name") String name);
}
