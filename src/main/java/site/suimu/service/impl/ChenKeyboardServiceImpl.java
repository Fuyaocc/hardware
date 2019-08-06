package site.suimu.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import net.sf.json.JSONObject;
import site.suimu.mapper.ChenKeyboardMapper;
import site.suimu.pojo.ChenKeyboard;
import site.suimu.service.ChenKeyboardService;
import site.suimu.util.MyBatisUtil;
@Service
public class ChenKeyboardServiceImpl implements ChenKeyboardService {

	
	SqlSession session;
	ChenKeyboardMapper ckmapper;
	
	private ChenKeyboardMapper getMapper()
	{
		session = MyBatisUtil.getSession();
		ckmapper = session.getMapper(ChenKeyboardMapper.class);
		return ckmapper;
	}
	
	@Override
	public String delete(int i, String phone) {
		// TODO Auto-generated method stub
		int result = getMapper().delete(phone, i);
		if(result>0)
			return DELETE_SUCCESS;
		else
			return DELETE_FAILED;
	}

	@Override
	public String update(ChenKeyboard ckb) {
		// TODO Auto-generated method stub
		int result = ckmapper.update(ckb);
		if(result>0)
			return UPDATE_SUCCESS;
		else
			return UPDATE_FAILED;
	}

	@Override
	public String insert(ChenKeyboard ckb) {
		// TODO Auto-generated method stub
		int result = ckmapper.insert(ckb);
		if(result>0)
			return INSERT_SUCCESS;
		else
			return INSERT_FAILED;
	}

	@Override
	public List<JSONObject> select(ChenKeyboard ckb) {
		// TODO Auto-generated method stub
		return ckmapper.selectAll(ckb);
	}

}
