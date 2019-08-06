package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.XuLogin;
import site.suimu.service.XuRegisteService;
import site.suimu.service.impl.XuRegisteServiceImpl;
import site.suimu.util.SendTelMsgUtils;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/xky/registe")
public class XuRegisteController {

    XuRegisteService xuRegisteService=new XuRegisteServiceImpl();


   @RequestMapping("insert")
   @ResponseBody
    public JSONObject insertXuLogin(@RequestBody XuLogin xuLogin){
        JSONObject jsonObject=new JSONObject();
       if(xuRegisteService.insertXuLogin(xuLogin).equals("注册成功"))
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
