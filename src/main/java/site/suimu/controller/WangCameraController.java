package site.suimu.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.WangCamera;
import site.suimu.service.WangCameraService;
import site.suimu.service.impl.WangCameraServiceImpl;

@Controller
@RequestMapping("/wang/Camera")
public class WangCameraController {
	
	private WangCameraService ccs = new WangCameraServiceImpl();
	
	@RequestMapping("updateCamera")
	@ResponseBody
	public String Update(@RequestBody WangCamera camera)
	{
		return ccs.Update(camera);
	}
	
	@RequestMapping("insertCamera")
	@ResponseBody
	public String Insert(@RequestBody WangCamera camera)
	{
		return ccs.Insert(camera);
	}
	
	@RequestMapping("deleteCamera")
	@ResponseBody
	public String Delete(@RequestBody String phone,@RequestBody int no)
	{
		return ccs.Delete(no, phone);
	}
	
	@RequestMapping("selectCamera")
	@ResponseBody
	public List<JSONObject> Select(@RequestBody WangCamera camera)
	{
		return ccs.Select(camera);
	}
	
}
