package site.suimu.mapper;
import java.util.List;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenUser;

public interface ChenUserMapper {

	JSONObject select(String phone);

	int update(ChenUser chenuser);

	int delete(String phone);

	int insert(ChenUser chenuser);


	List<JSONObject> selectAll();
}
