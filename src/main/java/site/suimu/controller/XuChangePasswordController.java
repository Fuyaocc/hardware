package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.service.XuChangePasswordService;
import site.suimu.service.impl.XuChangePasswordServiceImpl;

@Controller
@RequestMapping("/xky/update")
public class XuChangePasswordController {
    XuChangePasswordService  xuChangePasswordService=new XuChangePasswordServiceImpl();

    @RequestMapping("password")
    @ResponseBody
    public JSONObject ChangePassword(@RequestParam("phone") String phone,@RequestParam("password") String password)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuChangePasswordService.updatePassword(phone,password)>0)
        {
            jsonObject.put("res",1);
        }
        else
        {
            jsonObject.put("res",-1);
        }

        return jsonObject;
    }
}
