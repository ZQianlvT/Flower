package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.entity.UserAndTeam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@Controller
@RequestMapping("/team")
public class TeamController extends BaseController {

    @Autowired
    HttpSession session;

    @RequestMapping("/listTeam")
    public String listTeam(Map<String,Object> map) {
        User currUser = (User) session.getAttribute("currUser");
        Team team = teamService.getByUId(currUser);
        List<User> userList = userService.getByTeamId(team);
        map.put("userList",userList);
        return "forward:/WEB-INF/jsp/team/listTeam.jsp";
    }

    @RequestMapping("/updateTeamName")
    public String updateTeamName(Team team) {
        teamService.updateByPK(team);
        List<User> userList = userService.getByTeamId(team);
        return "forward:/WEB-INF/jsp/team/listTeam.jsp";
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
        Team team = new Team();
        team.setInviteLink(inviteLink);
        team = teamService.getByInviteLink(team);
        if(team==null){
            //邀请码不存在
            return "/error.jsp";
        }
        //调用Service向用户团队中间表添加一条数据
        UserAndTeam userAndTeam = new UserAndTeam();
        userAndTeam.setId(UUID.randomUUID().toString().replace("-",""));
        userAndTeam.settId(team.getId());
        userAndTeam.setuId(currUser.getId());
        teamService.joinTeam(userAndTeam);
        return "/WEB-INF/jsp/project/listProject.jsp";
    }
}
