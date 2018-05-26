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
        Team team = (Team) session.getAttribute("currTeam");
        List<User> userList = userService.getByTeamId(team);
        map.put("userList",userList);
        return "forward:/WEB-INF/jsp/team/listTeam.jsp";
    }

    @RequestMapping("/listDeleteMembers")
    public String listDeleteMembers(Map<String,Object> map) {
        Team team = (Team) session.getAttribute("currTeam");
        List<User> userList = userService.getByTeamId(team);
        map.put("userList",userList);
        return "forward:/WEB-INF/jsp/team/deleteMembers.jsp";
    }

    @RequestMapping("/updateTeamName")
    public String updateTeamName(Team team) {
        Team currTeam = (Team) session.getAttribute("currTeam");
        team.setId(currTeam.getId());
        teamService.updateByPK(team);
        currTeam.setName(team.getName());
        return "/WEB-INF/jsp/team/updateTeam.jsp";
    }

    @RequestMapping("/setMember")
    public String setMember(Map<String,Object> map,User user) {
        user = userService.getByPK(user);
        map.put("user",user);
        return "forward:/WEB-INF/jsp/team/setMember.jsp";
    }

    @RequestMapping("/updateInviteLink")
    public String updateInviteLink() {
        Team currTeam = (Team) session.getAttribute("currTeam");
        System.out.println("-----------OrionPax测试变量值----------currTeam值=" + currTeam + "," + "当前类=TeamController.updateInviteLink()");
        currTeam.setInviteLink(UUID.randomUUID().toString().replace("-",""));
        System.out.println("-----------OrionPax测试变量值2----------currTeam值=" + currTeam + "," + "当前类=TeamController.updateInviteLink()");
        teamService.updateByPK(currTeam);
        return "/WEB-INF/jsp/team/inviteMembers.jsp";
    }

    @RequestMapping("/removeMember")
    public String removeMember(User user) {
        Team currTeam = (Team) session.getAttribute("currTeam");
        UserAndTeam userAndTeam = new UserAndTeam();
        userAndTeam.setuId(user.getId());
        userAndTeam.settId(currTeam.getId());
        userService.removeMember(userAndTeam);
        return "/team/listTeam";
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
        System.out.println("-----------OrionPax测试变量值----------team值=" + team + "," + "当前类=TeamController.joinTeam()");
        if(team==null){
            //邀请码不存在
            return "/error.jsp";
        }
        //修改团队表当前人数
        team.setTotalMembers(team.getTotalMembers()+1);
        teamService.updateByPK(team);
        //调用Service向用户团队中间表添加一条数据
        UserAndTeam userAndTeam = new UserAndTeam();
        userAndTeam.setId(UUID.randomUUID().toString().replace("-",""));
        userAndTeam.settId(team.getId());
        userAndTeam.setuId(currUser.getId());
        teamService.joinTeam(userAndTeam);
        return "/WEB-INF/jsp/project/listProject.jsp";
    }
}
