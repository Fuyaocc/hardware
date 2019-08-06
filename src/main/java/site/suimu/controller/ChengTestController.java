package site.suimu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class ChengTestController {



	@RequestMapping("one")
	public String one()
	{
		return "index";
	}
	
	@RequestMapping("tow")
	@ResponseBody
	public String toe(String value)
	{
		System.out.println(value);
		return value;
	}
}
