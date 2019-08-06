package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.QianCD;
import site.suimu.service.QianCDService;
import site.suimu.service.impl.QianCDServiceImpl;

import javax.annotation.Resource;

@Controller
@RequestMapping("/qian/cd")
public class QianCDController {
    private QianCDService qianCDService = new QianCDServiceImpl();

    @RequestMapping("select")
    @ResponseBody
    public JSONObject selAll(@RequestBody QianCD qianCD) {
        return qianCDService.selAll(qianCD);
    }

    @RequestMapping("add")
    @ResponseBody
    public String insert(@RequestBody QianCD qianCD){
        return qianCDService.insertQianCD(qianCD);
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestBody String phone,@RequestBody int id){
        return qianCDService.deleteQianCD(phone,id);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(@RequestBody QianCD qianCD){
        return qianCDService.updateQianCD(qianCD);
    }
}
