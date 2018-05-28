package orion_pax.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.entity.Project;
import orion_pax.entity.Schedule;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/schedule")
public class ScheduleController extends BaseController {

    @InitBinder
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
        binder.registerCustomEditor(
                Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
    }

    @RequestMapping("/listSchedule")
    public String listSchedule(Map<String,Object> map, Schedule schedule) {
        System.out.println("-----------OrionPax测试变量值----------schedule=" + schedule + "," + "当前类=ScheduleController.listSchedule()");

        return "forward:/WEB-INF/jsp/schedule/listSchedule.jsp";
    }
}
