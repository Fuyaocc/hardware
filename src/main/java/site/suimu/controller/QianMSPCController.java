package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.QianMSPC;
import site.suimu.service.QianMSPCService;
import site.suimu.service.impl.QianMSPCServiceImpl;

@Controller
@RequestMapping("/qian/mspc")
public class QianMSPCController {
    private QianMSPCService qianMSPCService = new QianMSPCServiceImpl();

    @RequestMapping("select")
    @ResponseBody
    public JSONObject selAll(@RequestBody QianMSPC qianMSPC) {
        return qianMSPCService.selAll(qianMSPC);
    }

    @RequestMapping("add")
    @ResponseBody
    public String insert(@RequestBody QianMSPC qianMSPC){
        return qianMSPCService.insertQianMSPC(qianMSPC);
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestBody String phone,@RequestBody int id){
        return qianMSPCService.deleteQianMSPC(phone,id);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(@RequestBody QianMSPC qianMSPC){
        return qianMSPCService.updateQianMSPC(qianMSPC);
    }

}