package site.suimu.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.service.ChengPeopleService;
import site.suimu.service.impl.ChengPeopleServiceImpl;

import javax.annotation.Resource;

@Controller
@RequestMapping("/cheng/people")
public class ChengPeopleController {


    private ChengPeopleService chengPeopleService = new ChengPeopleServiceImpl();

    @RequestMapping("select/allpeo")
    @ResponseBody
    public JSONObject selAllPeople()
    {
        return chengPeopleService.selAll();
    }


}
