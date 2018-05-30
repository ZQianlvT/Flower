package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import orion_pax.entity.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/calendar")
public class CalendarController extends BaseController {

    @Autowired
    HttpSession session;

    @RequestMapping("/prepareCalendar")
    public String prepareCalendar(Map<String,Object> map) {
        User user = (User) session.getAttribute("currUser");
        List<Project> projectList = projectService.listProject(user);
        map.put("projectList",projectList);
        Team currTeam = (Team) session.getAttribute("currTeam");
        List<User> userList = userService.getByTeamId(currTeam);
        map.put("userList", userList);
        return "forward:/WEB-INF/jsp/calendar/calendar.jsp";
    }

    @RequestMapping("/showCalendar")
    @ResponseBody
    public Object showCalendar() {
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        ArrayList<Event> eventList = new ArrayList<>();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss+08:00");
        List<Schedule> scheduleList = scheduleService.showCalendar((User) session.getAttribute("currUser"));
        int i = 4;
        for (Schedule schedule : scheduleList) {
            Event event = new Event();
            event.setGuid(schedule.getId());
            event.setContent(schedule.getName());
            event.setStarts_at(simpleDateFormat.format(schedule.getStartTime()));
            event.setEnds_at(simpleDateFormat.format(schedule.getEndTime()));
            if(i>17){
                i=3;
            }
            event.setCalendar_color(++i);
            event.setCaleventable_guid(schedule.getpId());
            eventList.add(event);
        }
        map.put("calendar_events",eventList);
        map.put("todos",new ArrayList<>());
        return map;
        //return "{\"success\":true,\"calendar_events\":[{\"guid\":\"d8cb1b83f99a4000b77df7f872a95e18\",\"content\":\"zxc\",\"starts_at\":\"2018-05-18T00:00:00+08:00\",\"ends_at\":\"2018-05-23T23:59:59+08:00\",\"caleventable_guid\":\"e26956389763492f891259d7d9c5b94d\",\"repeat_starts_at\":false},{\"guid\":\"d2869aecfc7b4f56a46fcddd4b20193f\",\"content\":\"项目需求分析\",\"starts_at\":\"2018-05-17T00:00:00+08:00\",\"ends_at\":\"2018-05-18T23:59:59+08:00\",\"caleventable_guid\":\"e26956389763492f891259d7d9c5b94d\",\"repeat_starts_at\":false}],\"todos\":[]}";
    }
}
