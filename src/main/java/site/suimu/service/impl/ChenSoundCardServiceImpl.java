package site.suimu.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import net.sf.json.JSONObject;
import site.suimu.mapper.ChenSoundCardMapper;
import site.suimu.pojo.ChenSoundCard;
import site.suimu.service.ChenSoundCardService;
import site.suimu.util.MyBatisUtil;

public class ChenSoundCardServiceImpl implements ChenSoundCardService {

	SqlSession session;
	ChenSoundCardMapper cscmapper;
	
	private ChenSoundCardMapper getMapper()
	{
		session = MyBatisUtil.getSession();
		cscmapper = session.getMapper(ChenSoundCardMapper.class);
		return cscmapper;
	}
	public String delete(int no, String phone) {
		// TODO Auto-generated method stub
		int result = getMapper().delete(phone, no);
		if(result>0)
			return DELETE_SUCCESS;
		else
			return DELETE_FAILED;
	}

	@Override
	public String update(ChenSoundCard csc) {
		// TODO Auto-generated method stub
		int result = getMapper().update(csc);
		if(result>0)
			return UPDATE_SUCCESS;
		else
			return UPDATE_FAILED;
	}

	@Override
	public String insert(ChenSoundCard csc) {
		// TODO Auto-generated method stub
		int result = getMapper().insert(csc);
		if(result>0)
			return INSERT_SUCCESS;
		else
			return INSERT_FAILED;
	}

	@Override
	public List<JSONObject> select(ChenSoundCard csc) {
		// TODO Auto-generated method stub
		return getMapper().selectAll(csc);
	}

}
