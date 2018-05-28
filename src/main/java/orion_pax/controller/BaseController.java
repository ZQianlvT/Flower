package orion_pax.controller;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.service.*;

@Controller
@RequestMapping("/base")
public class BaseController {
    @Resource
    public ServletContext application;

    @Autowired
    protected TeamService teamService;

    @Autowired
    protected UserService userService;

    @Autowired
    protected ProjectService projectService;

    @Autowired
    protected ScheduleService scheduleService;

    @Autowired
    protected DiscussionService discussionService;

    @RequestMapping("/goURL/{folder}/{file}")
    public String goURL(@PathVariable String folder,@PathVariable String file){
        return "/WEB-INF/jsp/"+folder+"/"+file+".jsp";
    }
}
