package orion_pax.service;

import orion_pax.entity.Schedule;

public interface ScheduleService extends BaseService<Schedule> {

    /**
     * 根据浏览器提交的日程信息和参与的用户id添加一条日程和多条用户和日程记录
     *
     * @param schedule 封装日程信息的对象
     * @param ids 封装用户id的数组
     * @return 正整数，大于零添加成功
     */
    int addSchedule(Schedule schedule, String[] ids);
}
