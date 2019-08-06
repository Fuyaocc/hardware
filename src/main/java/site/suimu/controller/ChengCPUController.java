package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.ChengCPU;
import site.suimu.service.ChengCPUService;
import site.suimu.service.impl.ChengCPUServiceImpl;

/**
 *
 */
@Controller
@RequestMapping("/cheng/cpu")
public class ChengCPUController {

    private ChengCPUService chengCPUService = new ChengCPUServiceImpl();

    @RequestMapping("add")
    @ResponseBody
    public JSONObject addCPU(@RequestBody ChengCPU chengCPU){
        String a = chengCPUService.insertCPU(chengCPU);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("res",a);
        return jsonObject;
    }


    @RequestMapping("select")
    @ResponseBody
    public JSONObject selectCPU(@RequestBody ChengCPU chengCPU)
    {
        JSONObject jsonObject = new JSONObject();
        jsonObject = chengCPUService.selectCPU(chengCPU);
        return jsonObject;
    }


    @RequestMapping("delete")
    @ResponseBody
    public JSONObject deleteCPU(@RequestParam("id") int id){
        JSONObject jsonObject = new JSONObject();
        String str = chengCPUService.deleteCPU(id);
        jsonObject.put("res",str);
        return jsonObject;
    }
}
