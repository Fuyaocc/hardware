package site.suimu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.sf.json.JSONObject;
import site.suimu.pojo.*;

public interface ChenSoundCardMapper {
	List<JSONObject> selectAll(ChenSoundCard csc);
	int delete(@Param("phone") String shop, @Param("no") int no);
	int update(ChenSoundCard csc);
	int insert(ChenSoundCard csc);
}
