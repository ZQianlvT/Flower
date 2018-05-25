package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/team")
public class TeamController extends BaseController {

    @Autowired
    HttpSession session;

    @RequestMapping("/listTeam")
    public String listTeam() {

        return "";
    }

    @RequestMapping("/joinTeam")
    public String joinTeam(HttpServletRequest request) {
        //判断用户是否已登录
        User currUser = (User) session.getAttribute("currUser");
        if(currUser==null){
            return "/inviteRegister.jsp";      //返回用户注册页面2
        }
        String inviteLink = request.getParameter("inviteLink");
        //调用Service根据邀请链接查询团队

        //调用Service向用户团队中间表添加一条数据
        return "";
    }
}
