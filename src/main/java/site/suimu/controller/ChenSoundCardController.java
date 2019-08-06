package site.suimu.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenSoundCard;
import site.suimu.service.ChenSoundCardService;
import site.suimu.service.impl.ChenSoundCardServiceImpl;

public class ChenSoundCardController {
private ChenSoundCardService cscs = new ChenSoundCardServiceImpl();
	
	@RequestMapping("updateSoundCard")
	@ResponseBody
	public String Update(@RequestBody ChenSoundCard csc)
	{
		return cscs.update(csc);
	}
	
	@RequestMapping("insertSoundCard")
	@ResponseBody
	public String Insert(@RequestBody ChenSoundCard csc)
	{
		return cscs.insert(csc);
	}
	
	@RequestMapping("deleteSoundCard")
	@ResponseBody
	public String Delete(@RequestBody String phone,@RequestBody int no)
	{
		return cscs.delete(no, phone);
	}
	
	@RequestMapping("selectSoundCard")
	@ResponseBody
	public List<JSONObject> Select(@RequestBody ChenSoundCard csc)
	{
		return cscs.select(csc);
	}
}
