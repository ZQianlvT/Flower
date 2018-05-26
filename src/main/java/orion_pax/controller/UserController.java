package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    HttpSession session;

    @Resource
    private UserService userService;

    @RequestMapping("/register")
    @ResponseBody
    public Object register(User user, String teamName) {
        System.out.println("-----------OrionPax测试变量值----------user值=" + user + "," + "当前类=UserController.register()");
        System.out.println("-----------OrionPax测试变量值----------teamName值=" + teamName + "," + "当前类=UserController.register()");
        //Service注册方法
        user = userService.register(user, teamName);
        Map<String, String> map = new HashMap<>();
        if (user == null) {
            map.put("errors", "该账号已存在，请直接<a href=\"/Flower/login.jsp\">登录</a>");
        }
        return map;
    }

    @RequestMapping("/updatePwd")
    @ResponseBody
    public Object updatePwd(String oldPwd, String newPwd) {
        System.out.println("-----------OrionPax测试变量值----------oldPwd值=" + oldPwd + "," + "当前类=UserController.updatePwd()");
        System.out.println("-----------OrionPax测试变量值----------newPwd值=" + newPwd + "," + "当前类=UserController.updatePwd()");
        Map<String, String> map = new HashMap<>();
        User currUser = (User) session.getAttribute("currUser");

        User user = new User();
        user.setEmail(currUser.getEmail());
        user.setPwd(oldPwd);
        if (!userService.isRightPwd(user)) {
            map.put("errors", "现有密码错误！");
            return map;
        }

        user.setId(currUser.getId());
        user.setPwd(newPwd);
        userService.updateByPK(user);
        return map;
    }

    @RequestMapping("/findUser")
    public String register(HttpServletRequest request) {
        User currUser = (User) session.getAttribute("currUser");
        //调用user方法查询当前User数据
        User user = userService.getByPK(currUser);
        request.setAttribute("user", user);
        return "forward:/WEB-INF/jsp/user/updateUser.jsp";
    }

    @RequestMapping("/exit")
    public String exit() {
        session.setAttribute("currUser",null);
        return "/index.jsp";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user) {
        //userService更新User数据
        userService.updateByPK(user);
        return "/user/findUser";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Object login(User user, String teamName) {
        System.out.println("-----------OrionPax测试变量值----------user值=" + user + "," + "当前类=UserController.login()");
        System.out.println("-----------OrionPax测试变量值----------teamName值=" + teamName + "," + "当前类=UserController.login()");

        Map<String, String> map = new HashMap<>();
        boolean existEmail = userService.isExistEmail(user);
        if (!existEmail) {
            map.put("errors", "true");
            map.put("target", "email");
            map.put("msg", "邮箱未注册！");
            return map;
        }

        //Service登录方法
        user = userService.login(user);
        session.setAttribute("currUser", user);
        if (user == null) {
            map.put("errors", "true");
            map.put("target", "pwd");
            map.put("msg", "密码错误，请重新输入！");
        }
        Team currTeam = teamService.getByUId(user);
        session.setAttribute("currTeam", currTeam);
        return map;
    }

    @RequestMapping("/updateImg")
    @ResponseBody
    public Object updateImg(HttpServletRequest request,MultipartFile upload_file) throws IOException {
        String requestURL = request.getRequestURL().toString();
        String requestURI = request.getRequestURI();
        String realPath = request.getSession().getServletContext().getRealPath("");
        String baseURL = requestURL.replace(requestURI, "");
        System.out.println("-----------OrionPax测试变量值----------baseURL值=" + baseURL + "," + "当前类=UserController.updateImg()");
        System.out.println("-----------OrionPax测试变量值----------picture值=" + upload_file + "," + "当前类=UserController.updateImg()");
        System.out.println("-----------OrionPax测试变量值----------realPath值=" + realPath + "," + "当前类=UserController.updateImg()");
        // 把图片保存到图片目录下
        // 保存图片，这个图片有的时候文件名可能会重复，你保存多了会把原来的图片给覆盖掉，这就不太合适了。
        // 所以为每个文件生成一个新的文件名
        String picName = UUID.randomUUID().toString().replace("-","");
        // 截取文件的扩展名(如.jpg)
        String oriName = upload_file.getOriginalFilename();
        String extName = oriName.substring(oriName.lastIndexOf("."));
        // 保存文件
        upload_file.transferTo(new File(realPath+"/head/" + picName + extName));
        User currUser = (User) session.getAttribute("currUser");
        User user = new User();
        user.setId(currUser.getId());
        user.setImg("/head/" + picName + extName);
        userService.updateByPK(user);

        // 把文件名保存到数据库
        Map<String, Object> map = new HashMap<>();
        map.put("success", true);
        map.put("avatar",baseURL+"/Flower"+user.getImg());
        return map;
    }
}
