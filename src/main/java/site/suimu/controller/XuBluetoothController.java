package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.XuBluetooth;
import site.suimu.service.XuBluetoothService;
import site.suimu.service.impl.XuBluetoothServiceImpl;

@Controller
@RequestMapping("/xky/bluetooth")
public class XuBluetoothController {
    XuBluetoothService xuBluetoothService=new XuBluetoothServiceImpl();

    @RequestMapping("insertbt")
    @ResponseBody
    public JSONObject insertbt(@RequestBody XuBluetooth xuBluetooth)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuBluetoothService.insertInto(xuBluetooth).equals("成功添加"))
        {
            jsonObject.put("resbt",1);
        }
        else
        {
            jsonObject.put("resbt",-1);
        }
        return jsonObject;
    }

    @RequestMapping("deletebt")
    @ResponseBody
    public JSONObject delete(@RequestBody String phone,@RequestBody int id)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuBluetoothService.delete(phone,id).equals("删除成功"))
        {
            jsonObject.put("resbt",1);
        }
        else
        {
            jsonObject.put("resbt",-1);
        }
        return jsonObject;
    }

    @RequestMapping("updatebt")
    @ResponseBody
    public JSONObject update(@RequestBody XuBluetooth xuBluetooth)
    {
        JSONObject jsonObject=new JSONObject();
        if(xuBluetoothService.update(xuBluetooth).equals("更新成功"))
        {
            jsonObject.put("resbt",1);
        }
        else
        {
            jsonObject.put("resbt",-1);
        }
        return jsonObject;

    }

    @RequestMapping("selectbt")
    @ResponseBody
    public JSONObject select(XuBluetooth xuBluetooth)
    {
        return xuBluetoothService.selectAll(xuBluetooth);
    }
}
