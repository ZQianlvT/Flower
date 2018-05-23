package orion_pax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import orion_pax.entity.User;
import orion_pax.service.UserService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

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
    public String login(User user,String teamName){
        System.out.println("-----------OrionPax测试变量值----------user值=" + user + "," + "当前类=UserController.login()");
        System.out.println("-----------OrionPax测试变量值----------teamName值=" + teamName + "," + "当前类=UserController.login()");
        //Service登录方法
        return "forward:/index.jsp";
    }
}
