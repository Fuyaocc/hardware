package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.XuNetworkCard;
import site.suimu.service.XuNetworkCardService;
import site.suimu.service.impl.XuNetworkCardServiceImpl;

@Controller
@RequestMapping("/xky/networkcard")
public class XuNetworkCardController {

    XuNetworkCardService xuNetworkCardService=new XuNetworkCardServiceImpl();

    @RequestMapping("insertnc")
    @ResponseBody
    public JSONObject insertcs(XuNetworkCard xuNetworkCard)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuNetworkCardService.insertInto(xuNetworkCard).equals("成功添加"))
        {
            jsonObject.put("resnc",1);
        }
        else
        {
            jsonObject.put("resnc",-1);
        }
        return jsonObject;
    }


    @RequestMapping("deletenc")
    @ResponseBody
    public JSONObject delete(@RequestBody String phone, @RequestBody int id)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuNetworkCardService.delete(phone,id).equals("删除成功"))
        {
            jsonObject.put("resnc",1);
        }
        else
        {
            jsonObject.put("resnc",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatenc")
    @ResponseBody
    public JSONObject update(@RequestBody XuNetworkCard xuNetworkCard)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuNetworkCardService.update(xuNetworkCard).equals("更新成功"))
        {
            jsonObject.put("resnc",1);
        }
        else
        {
            jsonObject.put("resnc",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectnc")
    @ResponseBody
    public JSONObject select(XuNetworkCard xuNetworkCard)
    {
        return xuNetworkCardService.selectAll(xuNetworkCard);
    }

}
