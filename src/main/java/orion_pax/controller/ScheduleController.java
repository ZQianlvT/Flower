package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.entity.Project;
import orion_pax.entity.Schedule;
import orion_pax.entity.Team;
import orion_pax.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/schedule")
public class ScheduleController extends BaseController {

    @Autowired
    HttpSession session;

    @InitBinder
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
        binder.registerCustomEditor(
                Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }

    @RequestMapping("/listSchedule")
    public String listSchedule(Map<String, Object> map, Schedule schedule,String month) {
        System.out.println("-----------OrionPax测试变量值----------month值=" + month + "," + "当前类=ScheduleController.listSchedule()");
        Calendar calendar = Calendar.getInstance();
        if(month==null){
            calendar.setTime(new Date());
        }else {
            Date currTime = (Date) session.getAttribute("currTimeStr");
            calendar.setTime(currTime);
            if("left".equals(month)){
                calendar.add(Calendar.MONTH,-1);
            }else{
                calendar.add(Calendar.MONTH,1);
            }
        }
        session.setAttribute("currTimeStr",calendar.getTime());
        calendar.set(Calendar.DAY_OF_MONTH,1);
        schedule.setStartTime(calendar.getTime());
        calendar.add(Calendar.MONTH,1);
        calendar.add(Calendar.DAY_OF_MONTH,-1);
        schedule.setEndTime(calendar.getTime());
        System.out.println("-----------OrionPax测试变量值----------schedule=" + schedule + "," + "当前类=ScheduleController.listSchedule()");
        List<Schedule> scheduleList = scheduleService.select(schedule);
        map.put("scheduleList", scheduleList);
        System.out.println("-----------OrionPax测试变量值----------scheduleList值=" + scheduleList + "," + "当前类=ScheduleController.listSchedule()");
        map.put("pId", schedule.getpId());
        return "forward:/WEB-INF/jsp/schedule/listSchedule.jsp";
    }

    @RequestMapping("/createSchedule")
    public String createSchedule(Map<String, Object> map, Project project) {
        System.out.println("-----------OrionPax测试变量值----------project=" + project + "," + "当前类=ScheduleController.createSchedule()");
        Project currProject = projectService.getBaseByPK(project);
        map.put("currProject", currProject);
        System.out.println("-----------OrionPax测试变量值----------currProject值=" + currProject + "," + "当前类=ScheduleController.createSchedule()");
        Team currTeam = (Team) session.getAttribute("currTeam");
        System.out.println("-----------OrionPax测试变量值----------currTeam值=" + currTeam + "," + "当前类=ScheduleController.createSchedule()");
        List<User> userList = userService.getByTeamId(currTeam);
        map.put("userList", userList);
        return "forward:/WEB-INF/jsp/schedule/createSchedule.jsp";
    }

    @RequestMapping("/addSchedule")
    public String addSchedule(Map<String, Object> map, Schedule schedule,String[] ids) {
        System.out.println("-----------OrionPax测试变量值----------schedule值=" + schedule + "," + "当前类=ScheduleController.addSchedule()");
        for (String id : ids) {
            System.out.println("-----------OrionPax测试变量值----------id值=" + id + "," + "当前类=ScheduleController.addSchedule()");
        }
        scheduleService.addSchedule(schedule,ids);
        return "forward:/schedule/listSchedule";
    }
}
