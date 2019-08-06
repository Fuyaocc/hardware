package site.suimu.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import site.suimu.mapper.WangCameraMapper;
import site.suimu.pojo.WangCamera;
import site.suimu.service.WangCameraService;
import site.suimu.util.MyBatisUtil;

public class WangCameraServiceImpl implements WangCameraService {

	SqlSession session;
	WangCameraMapper ccmapper;
	
	private WangCameraMapper getMapper()
	{
		session = MyBatisUtil.getSession();
		ccmapper = session.getMapper(WangCameraMapper.class);
		return ccmapper;
	}
	
	@Override
	public String Delete(int no, String phone) {
		// TODO Auto-generated method stub
		int result = getMapper().delete(phone, no);
		if(result>0)
			return DELETE_SUCCESS;
		else
			return DELETE_FAILED;
	}

	@Override
	public String Update(WangCamera cca) {
		// TODO Auto-generated method stub
		int result = getMapper().update(cca);
		if(result>0)
			return UPDATE_SUCCESS;
		else
			return UPDATE_FAILED;
	}

	@Override
	public String Insert(WangCamera cca) {
		// TODO Auto-generated method stub
		int result = getMapper().insert(cca);
		if(result>0)
			return INSERT_SUCCESS;
		else
			return INSERT_FAILED;
	}

	@Override
	public List<JSONObject> Select(WangCamera cca) {
		// TODO Auto-generated method stub
		return getMapper().selectAll(cca);
	}

}
