package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.QianMouse;
import site.suimu.service.QianMouseService;
import site.suimu.service.impl.QianMouseServiceImpl;

@Controller
@RequestMapping("/qian/mouse")
public class QianMouseController {
    private QianMouseService qianMouseService = new QianMouseServiceImpl();

    @RequestMapping("select")
    @ResponseBody
    public JSONObject selAll(@RequestBody QianMouse qianMouse) {
        return qianMouseService.selAll(qianMouse);
    }

    @RequestMapping("add")
    @ResponseBody
    public String insert(@RequestBody QianMouse qianMouse){
        return qianMouseService.insertQianMouse(qianMouse);
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestBody String phone,@RequestBody int id){
        return qianMouseService.deleteQianMouse(phone,id);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(@RequestBody QianMouse qianMouse){
        return qianMouseService.updateQianMouse(qianMouse);
    }
}
