package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.WangMonitor;
import site.suimu.service.WangMonitorService;
import site.suimu.service.impl.WangMonitorServiceImpl;

@Controller
@RequestMapping("/wm/monitor")
public class WangMonitorController {
    WangMonitorService wangMonitorService=new WangMonitorServiceImpl();

    @RequestMapping("insertmo")
    @ResponseBody
    public JSONObject insertmo(@RequestBody WangMonitor wangMonitor)
    {
        JSONObject jsonObject=new JSONObject();
        if(wangMonitorService.insertInto(wangMonitor).equals("成功添加"))
        {
            jsonObject.put("resmo",1);
        }
        else
        {
            jsonObject.put("resmo",-1);
        }
        return jsonObject;
    }

    @RequestMapping("deletemo")
    @ResponseBody
    public JSONObject delete(@RequestBody String name)
    {
        JSONObject jsonObject=new JSONObject();
        if(wangMonitorService.delete(name).equals("删除成功"))
        {
            jsonObject.put("resmo",1);
        }
        else
        {
            jsonObject.put("resmo",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatemo")
    @ResponseBody
    public JSONObject update(@RequestBody WangMonitor wangMonitor)
    {
        JSONObject jsonObject=new JSONObject();
        if(wangMonitorService.update(wangMonitor).equals("更新成功"))
        {
            jsonObject.put("resmo",1);
        }
        else
        {
            jsonObject.put("resmo",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectmo")
    @ResponseBody
    public JSONObject select(WangMonitor wangMonitor)
    {
        return wangMonitorService.selectAll(wangMonitor);
    }
}
