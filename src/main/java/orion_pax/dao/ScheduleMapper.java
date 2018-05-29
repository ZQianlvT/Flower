package orion_pax.dao;

import orion_pax.entity.Schedule;
import orion_pax.entity.User;

import java.util.List;

public interface ScheduleMapper extends BaseMapper<Schedule> {
    int insert(Schedule record);

    int insertSelective(Schedule record);

    /**
     * 通过当前用户id查询，其需要显示的所有日程
     *
     * @param user 封装id的User对象
     * @return 查询到的日程列表
     */
    List<Schedule> getByUId(User user);
}