package site.suimu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.ChengPeopleMapper;
import site.suimu.pojo.ChengPeople;
import site.suimu.service.ChengPeopleService;
import site.suimu.util.MyBatisUtil;

@Service
public class ChengPeopleServiceImpl implements ChengPeopleService{
	
	

	JSONObject jsonObj = new JSONObject();
	SqlSession session;
	@Resource
	ChengPeopleMapper chengPeopleMapper;
	List<JSONObject> array;
	int status = 0;
	
	
	private ChengPeopleMapper getMapper() {
		session =  MyBatisUtil.getSession();
		chengPeopleMapper = session.getMapper(ChengPeopleMapper.class);
		return chengPeopleMapper;
	}
	

	@Override
	public JSONObject selAll() {
		array = getMapper().selectAll();
		jsonObj.put("list", array);
		return jsonObj;
	}

	@Override
	public String insertChengPeople(ChengPeople chengPeople) {
		status  = getMapper().insertChengPeople(chengPeople);
		if(status>0)
		{
			return INSERT_SUCCESS;
		}else {
			return INSERT_FAILED;
		}
	}

	@Override
	public String deleteChengPeople(int id) {
		status  = getMapper().deleteChengPeopleById(id);
		if(status>0)
		{
			return DELETE_SUCCESS;
		}else {
			return DELETE_FAILED;
		}
	}

		
	
}
