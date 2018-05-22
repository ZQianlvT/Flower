package orion_pax.dao;

import orion_pax.entity.UserAndSchedule;

public interface UserAndScheduleMapper {
    int insert(UserAndSchedule record);

    int insertSelective(UserAndSchedule record);
}