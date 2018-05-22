package orion_pax.dao;

import orion_pax.entity.Task;

public interface TaskMapper {
    int insert(Task record);

    int insertSelective(Task record);
}