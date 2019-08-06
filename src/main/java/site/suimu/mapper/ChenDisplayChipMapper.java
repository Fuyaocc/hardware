package site.suimu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenDisplayChip;

public interface ChenDisplayChipMapper {
	List<JSONObject> selectAll(ChenDisplayChip cdc);
	int delete(@Param("phone") String shop, @Param("no") int no);
	int update(ChenDisplayChip cdc);
	int insert(ChenDisplayChip cdc);
}
