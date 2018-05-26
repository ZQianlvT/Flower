package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import orion_pax.entity.Project;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.service.impl.TeamServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@Controller
@RequestMapping("/project")
public class ProjectController extends BaseController{
    @Autowired
    HttpSession session;
    @RequestMapping("/listProject")
    public String listProject() {
        //获取当前团队id

        //调用Service方法显示所有项目

        return "";
    }

    @RequestMapping("/createProject")
    @ResponseBody
    public Object createProject(Project project) {
        //获取当前用户id
        User currUser= (User) session.getAttribute("currUser");
        project.setId(UUID.randomUUID().toString().replace("-",""));
        project.setStatus(0);
        //调用teamService方法根据用户id获取团队id
        Team team = teamService.getByUId(currUser);
        System.out.println(currUser);
        project.settId(team.getId());

        //调用Service方法根据浏览器提交的相关数据添加一个项目
        projectService.insert(project);

        //{"success":true,"target_url":"/projects/5891854d3b914ca5af7673fd5bc0a5e4","target_root":true,"guid":"5891854d3b914ca5af7673fd5bc0a5e4"}
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("target_url","/Flower/base/goURL/project/listProject");
        return map;


    }
}