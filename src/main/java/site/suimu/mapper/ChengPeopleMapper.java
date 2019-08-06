package site.suimu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChengPeople;

public interface ChengPeopleMapper {

	/**
	 * 查询表中所有数据
	 * 在xml中做了对应的配置后，就不要用注解的方式了
	 * @return List<JSONObject>
	 */

	List<JSONObject> selectAll();
	
	@Insert("insert into cheng_people (cheng_name,cheng_age,cheng_phone,cheng_id) values(#{name},#{age},#{phoneNum},default)")
	int insertChengPeople(ChengPeople chengPeople);
	
	@Delete("delete from cheng_people where id=#{id}")
	int deleteChengPeopleById(int id);
}
