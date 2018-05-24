package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import orion_pax.entity.User;
import orion_pax.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    HttpSession session;

    @Resource
    private UserService userService;

    @RequestMapping("/register")
    @ResponseBody
    public Object register(User user,String teamName){
        System.out.println("-----------OrionPax测试变量值----------user值=" + user + "," + "当前类=UserController.register()");
        System.out.println("-----------OrionPax测试变量值----------teamName值=" + teamName + "," + "当前类=UserController.register()");
        //Service注册方法
        user = userService.register(user, teamName);
        Map<String,String> map = new HashMap<>();
        if(user==null){
            map.put("errors","该账号已存在，请直接<a href=\"/Flower/login.jsp\">登录</a>");
        }
        return map;
    }

    @RequestMapping("/login")
    @ResponseBody
    public Object login(User user,String teamName){
        System.out.println("-----------OrionPax测试变量值----------user值=" + user + "," + "当前类=UserController.login()");
        System.out.println("-----------OrionPax测试变量值----------teamName值=" + teamName + "," + "当前类=UserController.login()");

        Map<String,String> map = new HashMap<>();
        boolean existEmail = userService.isExistEmail(user);
        if(!existEmail){
            map.put("errors","true");
            map.put("target","email");
            map.put("msg","邮箱未注册！");
            return map;
        }

        //Service登录方法
        user = userService.login(user);
        session.setAttribute("currUser",user);
        if(user==null){
            map.put("errors","true");
            map.put("target","pwd");
            map.put("msg","密码错误，请重新输入！");
        }
        return map;
    }
}
