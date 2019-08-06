package site.suimu.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenDisplayChip;
import site.suimu.service.ChenDisplayChipService;
import site.suimu.service.impl.ChenDisplayChipServiceImpl;

public class ChenDisplayChipController {
private ChenDisplayChipService cdcs = new ChenDisplayChipServiceImpl();
	
	@RequestMapping("updateDisplayChip")
	@ResponseBody
	public String Update(@RequestBody ChenDisplayChip cds)
	{
		return cdcs.update(cds);
	}
	
	@RequestMapping("insertDisplayChip")
	@ResponseBody
	public String Insert(@RequestBody ChenDisplayChip cds)
	{
		return cdcs.insert(cds);
	}
	
	@RequestMapping("deleteDisplayChip")
	@ResponseBody
	public String Delete(@RequestBody String phone,@RequestBody int no)
	{
		return cdcs.delete(no, phone);
	}
	
	@RequestMapping("selectDisplayChip")
	@ResponseBody
	public List<JSONObject> Select(@RequestBody ChenDisplayChip cds)
	{
		return cdcs.select(cds);
	}
}
