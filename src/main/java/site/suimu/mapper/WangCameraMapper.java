package site.suimu.mapper;

import java.util.List;

import net.sf.json.JSONObject;
import site.suimu.pojo.WangCamera;

public interface WangCameraMapper {
	List<JSONObject> selectAll(WangCamera ca);
	int delete(String shop, int no);
	int update(WangCamera ca);
	int insert(WangCamera ca);
}
