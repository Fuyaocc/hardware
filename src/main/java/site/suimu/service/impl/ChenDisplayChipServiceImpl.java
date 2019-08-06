package site.suimu.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import site.suimu.mapper.ChenDisplayChipMapper;
import site.suimu.pojo.ChenDisplayChip;
import site.suimu.service.ChenDisplayChipService;
import site.suimu.util.MyBatisUtil;

public class ChenDisplayChipServiceImpl implements ChenDisplayChipService {

	SqlSession session;
	ChenDisplayChipMapper cdcmapper;
	
	private ChenDisplayChipMapper getMapper()
	{
		session = MyBatisUtil.getSession();
		cdcmapper = session.getMapper(ChenDisplayChipMapper.class);
		return cdcmapper;
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
	public String update(ChenDisplayChip cdc) {
		// TODO Auto-generated method stub
		int result = getMapper().update(cdc);
		if(result>0)
			return UPDATE_SUCCESS;
		else
			return UPDATE_FAILED;
	}

	@Override
	public String insert(ChenDisplayChip cdc) {
		// TODO Auto-generated method stub
		int result = getMapper().insert(cdc);
		if(result>0)
			return INSERT_SUCCESS;
		else
			return INSERT_FAILED;
	}

	@Override
	public List<JSONObject> select(ChenDisplayChip cdc) {
		// TODO Auto-generated method stub
		return getMapper().selectAll(cdc);
	}

}
