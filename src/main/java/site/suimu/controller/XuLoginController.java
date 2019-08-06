package site.suimu.controller;


import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import site.suimu.pojo.XuLogin;
import site.suimu.service.XuLoginService;
import site.suimu.service.impl.XuLoginServiceImpl;
import site.suimu.util.SendTelMsgUtils;
import site.suimu.util.XuSessionListener;
import site.suimu.util.XuSessionContext;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/xky/login")
public class XuLoginController {
    XuLoginService xuLoginService=new XuLoginServiceImpl();


    @RequestMapping("checkall")
    @ResponseBody
    public JSONObject login(@RequestParam("phone") String phone,@RequestParam("password") String password,@RequestParam("isauto") boolean isauto,HttpServletResponse response,HttpSession session)
    {
        //session.invalidate();
        System.out.println(phone);
        System.out.println(password);
        System.out.println(isauto);
        JSONObject jsonObject=new JSONObject();
       if(xuLoginService.selOne(phone,password).equals("用户名不存在"))
       {
           //model.addAttribute("message","用户名或密码错误");
           jsonObject.put("result",-1);
           System.out.print("用户名或密码错误");
//           throw new RuntimeException("用户名或密码错误");

       }else
       {
           session.setAttribute("phone",phone);
           String id=session.getId();

          //创建一个存储JSESSIONID的Cookie 为该cookie设置持久化时间
           if(isauto) {
               Cookie cookie = new Cookie("JSESSIONID", phone);
               //cookie.setPath("hardware");
               cookie.setMaxAge(60 * 10080);
               response.addCookie(cookie);
           }

           jsonObject.put("result",1);
           System.out.print("登陆成功");
           //model.addAttribute("message","登陆成功");
       }
       return jsonObject;
    }


    @RequestMapping("logout")
    @ResponseBody
    public JSONObject logout(HttpSession session)
    {
        XuSessionContext.getInstance().DelSession(session);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("res",1);
        return jsonObject;
    }

}
