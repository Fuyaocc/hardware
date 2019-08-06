package site.suimu.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChenDisk;
import site.suimu.service.ChenDiskService;
import site.suimu.service.impl.ChenDiskServiceImpl;

@Controller
public class ChenDiskController {

    private ChenDiskService cds = new ChenDiskServiceImpl();

    @RequestMapping("updateDisk")
    @ResponseBody
    public String Update(@RequestBody ChenDisk cd) {
        return cds.update(cd);
    }

    @RequestMapping("insertDisk")
    @ResponseBody
    public String Insert(@RequestBody ChenDisk cd) {
        return cds.insert(cd);
    }

    @RequestMapping("deleteDisk")
    @ResponseBody
    public String Delete(@RequestBody String phone, @RequestBody int no) {
        return cds.delete(no, phone);
    }

    @RequestMapping("selectDisk")
    @ResponseBody
    public List<JSONObject> Select(@RequestBody ChenDisk cd) {
        return cds.select(cd);
    }
}
