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
        map.put("id",project.getId());
        System.out.println("3333333333333333"+project.getId());
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

    @RequestMapping("/removeProject")
    public String removeProject(Project project){
        //获取当前项目id
        //调用service方法删除项目
        System.out.println("1111111111111111111222222222"+project.getId());
        projectService.deleteByPk(project);
        return "/project/listProject";
    }
    @RequestMapping("/updateProject")
    public String updateProject(Project project){

        projectService.updateByPK(project);
        System.out.println("2222222222222"+project);
        return "/project/listProject";
    }
    @RequestMapping("/setProject")
    public String setProject(Map<String, Object> map,Project project){
        //获取当前项目id
        Project baseProject = projectService.getBaseByPK(project);
        System.out.println("2222222222222"+project);
        map.put("project",baseProject);
        return "forward:/WEB-INF/jsp/project/setProject.jsp";
    }
    @RequestMapping("/endProject")
    public String endProject(Project project){
        projectService.updateProject(project);
        return "/project/listProject";
    }
    @RequestMapping("/membersProject")
    public String membersProject(Map<String, Object> map,Project project){
        //获取当前项目id
        Project baseProject = projectService.getBaseByPK(project);
        System.out.println("2222222222222"+project);
        map.put("project",baseProject);
        return "forward:/WEB-INF/jsp/project/projectMembers.jsp";
    }
}