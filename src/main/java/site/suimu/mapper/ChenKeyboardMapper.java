package site.suimu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.sf.json.JSONObject;
import site.suimu.pojo.*;

public interface ChenKeyboardMapper {
	List<JSONObject> selectAll(ChenKeyboard ckb);
	int delete(@Param("phone") String phone, @Param("no") int no);
	int update(ChenKeyboard ckb);
	int insert(ChenKeyboard ckb);
}
