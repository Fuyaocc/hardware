package site.suimu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenDisk;

public interface ChenDiskMapper {
	List<JSONObject> selectAll(ChenDisk cd);
	int delete(@Param("phone") String shop, @Param("no") int no);
	int update(ChenDisk cd);
	int insert(ChenDisk cd);
}
