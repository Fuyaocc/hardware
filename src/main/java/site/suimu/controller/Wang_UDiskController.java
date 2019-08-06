package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.Wang_UDisk;
import site.suimu.service.Wang_UDiskService;
import site.suimu.service.impl.Wang_UDiskServiceImpl;

@Controller
@RequestMapping("/wang/udisk")
public class Wang_UDiskController {
    private Wang_UDiskService wang_uDiskService = new Wang_UDiskServiceImpl();

    @RequestMapping("select")
    @ResponseBody
    public JSONObject selAll(@RequestBody Wang_UDisk wang_uDisk) {
        return wang_uDiskService.selAll(wang_uDisk);
    }

    @RequestMapping("add")
    @ResponseBody
    public String insert(@RequestBody Wang_UDisk wang_uDisk){
        return wang_uDiskService.insertWang_UDisk(wang_uDisk);
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestBody String phone,@RequestBody int id){
        return wang_uDiskService.deleteWang_UDisk(phone,id);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(@RequestBody Wang_UDisk wang_uDisk){
        return wang_uDiskService.updateWang_UDisk(wang_uDisk);
    }
}
