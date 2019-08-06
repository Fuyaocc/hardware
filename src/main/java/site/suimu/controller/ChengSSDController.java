package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.ChengSSD;
import site.suimu.service.ChengSSDService;
import site.suimu.service.impl.ChengSSDServiceImpl;

@Controller
@RequestMapping("/cheng/ssd")
public class ChengSSDController {
    ChengSSDService chengSSDService=new ChengSSDServiceImpl();

    @RequestMapping("insertssd")
    @ResponseBody
    public JSONObject insertssd(@RequestBody ChengSSD chengSSD)
    {
        JSONObject jsonObject=new JSONObject();
        if(chengSSDService.insertInto(chengSSD).equals("成功添加"))
        {
            jsonObject.put("resssd",1);
        }
        else
        {
            jsonObject.put("resssd",-1);
        }
        return jsonObject;
    }

    @RequestMapping("deletessd")
    @ResponseBody
    public JSONObject delete(@RequestBody String name)
    {
        JSONObject jsonObject=new JSONObject();
        if(chengSSDService.delete(name).equals("删除成功"))
        {
            jsonObject.put("resssd",1);
        }
        else
        {
            jsonObject.put("resssd",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatessd")
    @ResponseBody
    public JSONObject update(@RequestBody ChengSSD chengSSD)
    {
        JSONObject jsonObject=new JSONObject();
        if(chengSSDService.update(chengSSD).equals("更新成功"))
        {
            jsonObject.put("resssd",1);
        }
        else
        {
            jsonObject.put("resssd",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectssd")
    @ResponseBody
    public JSONObject select(ChengSSD chengSSD)
    {
        return chengSSDService.selectAll(chengSSD);
    }
}
