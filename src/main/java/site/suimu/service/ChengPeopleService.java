package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChengPeople;

public interface ChengPeopleService {

	String INSERT_SUCCESS = "成功添加";

	String INSERT_FAILED = "添加失败";

	String DELETE_SUCCESS = "删除学院";

	String DELETE_FAILED = "删除失败";

	// 查询所有人员信息,并封装成一个json对象
	JSONObject selAll();

	// 新建一个
	String insertChengPeople(ChengPeople chengPeople);

	// 根据id删除学院
	String deleteChengPeople(int id);

}
