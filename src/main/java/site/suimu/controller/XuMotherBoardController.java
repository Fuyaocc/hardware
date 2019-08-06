package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.XuMotherBoard;
import site.suimu.service.XuMotherBoardService;
import site.suimu.service.impl.XuMotherBoardServiceImpl;

@Controller
@RequestMapping("/xky/motherboard")
public class XuMotherBoardController {

    XuMotherBoardService xuMotherBoardService=new XuMotherBoardServiceImpl();

    @RequestMapping("insertmb")
    @ResponseBody
    public JSONObject insertcs(XuMotherBoard xuMotherBoard)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuMotherBoardService.insertInto(xuMotherBoard).equals("成功添加"))
        {
            jsonObject.put("resmb",1);
        }
        else
        {
            jsonObject.put("resmb",-1);
        }
        return jsonObject;
    }


    @RequestMapping("deletemb")
    @ResponseBody
    public JSONObject delete(@RequestBody String name)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuMotherBoardService.delete(name).equals("删除成功"))
        {
            jsonObject.put("resmb",1);
        }
        else
        {
            jsonObject.put("resmb",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatemb")
    @ResponseBody
    public JSONObject update(@RequestBody XuMotherBoard xuMotherBoard)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuMotherBoardService.update(xuMotherBoard).equals("更新成功"))
        {
            jsonObject.put("resmb",1);
        }
        else
        {
            jsonObject.put("resmb",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectmb")
    @ResponseBody
    public JSONObject select(XuMotherBoard xuMotherBoard)
    {
        return xuMotherBoardService.selectAll(xuMotherBoard);
    }
}
