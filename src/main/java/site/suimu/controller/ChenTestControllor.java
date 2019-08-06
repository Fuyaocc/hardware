package site.suimu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/chen")

public class ChenTestControllor {
	
	@RequestMapping("test")
	public String test()
	{
		return "Pages/chen/test";
	}
}
