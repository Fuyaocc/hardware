package site.suimu.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenKeyboard;
import site.suimu.service.ChenKeyboardService;
import site.suimu.service.impl.ChenKeyboardServiceImpl;

public class ChenKeyboardController {
private ChenKeyboardService cks = new ChenKeyboardServiceImpl();
	
	@RequestMapping("updateKeyboard")
	@ResponseBody
	public String Update(@RequestBody ChenKeyboard ck)
	{
		return cks.update(ck);
	}
	
	@RequestMapping("insertKeyboard")
	@ResponseBody
	public String Insert(@RequestBody ChenKeyboard ck)
	{
		return cks.insert(ck);
	}
	
	@RequestMapping("deleteKeyboard")
	@ResponseBody
	public String Delete(@RequestBody String phone,@RequestBody int no)
	{
		return cks.delete(no, phone);
	}
	
	@RequestMapping("selectKeyboard")
	@ResponseBody
	public List<JSONObject> Select(@RequestBody ChenKeyboard ck)
	{
		return cks.select(ck);
	}
}
