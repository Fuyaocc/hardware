package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.mapper.XuChassisMapper;
import site.suimu.pojo.XuChassis;
import site.suimu.service.XuChassisService;
import site.suimu.service.impl.XuChangePasswordServiceImpl;
import site.suimu.service.impl.XuChassisServiceImpl;

@Controller
@RequestMapping("/xky/chassis")
public class XuChassisController {

    XuChassisService xuChassisService=new XuChassisServiceImpl();

    @RequestMapping("insertcs")
    @ResponseBody
    public JSONObject insertcs(XuChassis xuChassis)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuChassisService.insertInto(xuChassis).equals("成功添加"))
        {
            jsonObject.put("rescs",1);
        }
        else
        {
            jsonObject.put("rescs",-1);
        }
        return jsonObject;
    }


    @RequestMapping("deletecs")
    @ResponseBody
    public JSONObject delete(@RequestBody String phone, @RequestBody int id)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuChassisService.delete(phone,id).equals("删除成功"))
        {
            jsonObject.put("rescs",1);
        }
        else
        {
            jsonObject.put("rescs",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatecs")
    @ResponseBody
    public JSONObject update(@RequestBody XuChassis xuChassis)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuChassisService.update(xuChassis).equals("更新成功"))
        {
            jsonObject.put("rescs",1);
        }
        else
        {
            jsonObject.put("rescs",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectcs")
    @ResponseBody
    public JSONObject select(XuChassis xuChassis)
    {
        return xuChassisService.selectAll(xuChassis);
    }
}
