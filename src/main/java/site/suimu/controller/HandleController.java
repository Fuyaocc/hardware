package site.suimu.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/handle")
public class HandleController {


    @RequestMapping("error")
    @ResponseBody
    public String handleError()
    {
        return "error";
    }

    @RequestMapping("undo")
    @ResponseBody
    public String handleUndo()
    {
        return "undo";
    }
}
