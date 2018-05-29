package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Schedule;
import orion_pax.entity.User;
import orion_pax.entity.UserAndSchedule;
import orion_pax.service.ScheduleService;

import java.util.List;
import java.util.UUID;

@Service("scheduleService")
public class ScheduleServiceImpl extends BaseServiceImpl<Schedule> implements ScheduleService {
    /**
     * 根据浏览器提交的日程信息和参与的用户id添加一条日程和多条用户和日程记录
     *
     * @param schedule 封装日程信息的对象
     * @param ids      封装用户id的数组
     * @return 正整数，大于零添加成功
     */
    @Override
    public int addSchedule(Schedule schedule, String[] ids) {
        schedule.setId(UUID.randomUUID().toString().replace("-",""));
        int count = scheduleMapper.insert(schedule);
        UserAndSchedule userAndSchedule = new UserAndSchedule();
        for (String id : ids) {
            userAndSchedule.setId(UUID.randomUUID().toString().replace("-",""));
            userAndSchedule.setsId(schedule.getId());
            userAndSchedule.setuId(id);
            userAndScheduleMapper.insert(userAndSchedule);
        }
        return count;
    }

    /**
     * 通过当前用户id查询，其需要显示的所有日程
     *
     * @param user 封装id的User对象
     * @return 查询到的日程列表
     */
    @Override
    public List<Schedule> showCalendar(User user) {
        return scheduleMapper.getByUId(user);
    }
}
