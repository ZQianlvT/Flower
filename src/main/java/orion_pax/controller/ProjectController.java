package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import orion_pax.entity.Project;
import orion_pax.entity.Team;
import orion_pax.entity.User;

import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.Map;
import java.util.UUID;


@Controller
@RequestMapping("/project")
public class ProjectController extends BaseController {
    @Autowired
    HttpSession session;

    @RequestMapping("/listProject")
    public String listProject(Map<String, Object> map) {
        //获取当前用户id
        User currUser = (User) session.getAttribute("currUser");
        //调用Service方法显示所有项目
        List<Project> projectList = projectService.listProject(currUser);
        map.put("projectList", projectList);
        return "forward:/WEB-INF/jsp/project/listProject.jsp";
    }


    @RequestMapping("/detailProject")
    public String detailProject(Map<String, Object> map,Project project) {
        project = projectService.getByPK(project);
        map.put("project", project);
        return "forward:/WEB-INF/jsp/project/listBoard.jsp";
    }

    @RequestMapping("/createProject")
    //@ResponseBody
    public String createProject(Project project) {
        //获取当前用户id
//        User currUser= (User) session.getAttribute("currUser");
//        //调用teamService方法根据用户id获取团队id
//        Team team = teamService.getByUId(currUser);
        Team currTeam = (Team) session.getAttribute("currTeam");
        System.out.println(currTeam);
        project.setId(UUID.randomUUID().toString().replace("-", ""));
        project.setStatus(0);
        project.settId(currTeam.getId());

        //调用Service方法根据浏览器提交的相关数据添加一个项目
        projectService.createProject(project);

        //{"success":true,"target_url":"/projects/5891854d3b914ca5af7673fd5bc0a5e4","target_root":true,"guid":"5891854d3b914ca5af7673fd5bc0a5e4"}
//        Map<String,Object> map = new HashMap<>();
//        map.put("success",true);
//        map.put("target_url","/Flower/base/goURL/project/listProject");
        return "/project/listProject";


    }
}