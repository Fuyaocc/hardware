package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.util.SendTelMsgUtils;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/xky/dynamic")
public class XuDynamicMsgController {

    @RequestMapping("msg")
    @ResponseBody
    public JSONObject getDynamic(@RequestParam("phone") String phone)
    {
//        String phone = obj.getString("phone");
        JSONObject jsonObject=new JSONObject();
        System.out.println("phone    "+ phone);
        String str = null;
        String respDesc = null;

            try {
                str=SendTelMsgUtils.sendMsgTo(phone);
                JSONObject jsonObjt=new JSONObject();
                jsonObjt = JSONObject.fromObject(str);
                respDesc = jsonObjt.getString("respDesc");

            }
            catch (Exception e)
            {

            }
            finally {
                if (respDesc.equals("请求成功。"))
                {
                    jsonObject.put("status",1);
                    jsonObject.put("code",SendTelMsgUtils.randNum);
                }else {
                    jsonObject.put("status",-1);
                }
            }
        return jsonObject;
    }
}

