package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.QianMemory;
import site.suimu.service.QianMemoryService;
import site.suimu.service.impl.QianMemoryServiceImpl;

@Controller
@RequestMapping("/qian/memory")
public class QianMemoryController {

    private QianMemoryService qianMemoryService = new QianMemoryServiceImpl();

    @RequestMapping("select")
    @ResponseBody
    public JSONObject selAll(@RequestBody QianMemory qianMemory) {
        return qianMemoryService.selAll(qianMemory);
    }

    @RequestMapping("add")
    @ResponseBody
    public String insert(@RequestBody QianMemory qianMemory){
        String str = qianMemoryService.insertQianMemory(qianMemory);
        return str;
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestBody String phone,@RequestBody int id){
        return qianMemoryService.deleteQianMemory(phone,id);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(@RequestBody QianMemory qianMemory){
        return qianMemoryService.updateQianMemory(qianMemory);
    }
}
