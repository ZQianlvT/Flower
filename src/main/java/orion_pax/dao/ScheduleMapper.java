package orion_pax.dao;

import orion_pax.entity.Schedule;

public interface ScheduleMapper {
    int insert(Schedule record);

    int insertSelective(Schedule record);
}