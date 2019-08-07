package site.suimu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenUser;
import site.suimu.service.ChenUserService;
import site.suimu.service.impl.ChenUserServiceImpl;

import javax.annotation.Resource;

@Controller
@RequestMapping("/chen/user/")
public class ChenUserController {

	@Resource
	private ChenUserService cus;
	
	@RequestMapping("/updateusers")
	@ResponseBody
	public String Update(@RequestBody ChenUser user)
	{
		System.out.println(user.getEmail());
		return cus.update(user);
	}

	@RequestMapping("select")
	@ResponseBody
	public JSONObject selectUser(){
		return cus.selAll();
	}

	@RequestMapping("delete")
	@ResponseBody
	public JSONObject deleteUser(@RequestParam("phone")String phone){
		int res = cus.delete(phone);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("res",res);
		return jsonObject;
	}
}
