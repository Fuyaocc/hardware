package site.suimu.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import site.suimu.mapper.ChenDiskMapper;
import site.suimu.pojo.ChenDisk;
import site.suimu.service.ChenDiskService;
import site.suimu.util.MyBatisUtil;

public class ChenDiskServiceImpl implements ChenDiskService {

	SqlSession session;
	ChenDiskMapper cdmapper;
	
	private ChenDiskMapper getMapper()
	{
		session = MyBatisUtil.getSession();
		cdmapper = session.getMapper(ChenDiskMapper.class);
		return cdmapper;
	}
	
	@Override
	public String delete(int no, String phone) {
		// TODO Auto-generated method stub
		int result = getMapper().delete(phone, no);
		if(result>0)
			return DELETE_SUCCESS;
		else
			return DELETE_FAILED;
	}

	@Override
	public String update(ChenDisk cd) {
		// TODO Auto-generated method stub
		int result = getMapper().update(cd);
		if(result>0)
			return UPDATE_SUCCESS;
		else
			return UPDATE_FAILED;
	}

	@Override
	public String insert(ChenDisk cd) {
		// TODO Auto-generated method stub
		int result = getMapper().insert(cd);
		if(result>0)
			return INSERT_SUCCESS;
		else
			return INSERT_FAILED;
	}

	@Override
	public List<JSONObject> select(ChenDisk cd) {
		// TODO Auto-generated method stub
		List<JSONObject> result = getMapper().selectAll(cd);
		return result;
	}

}
