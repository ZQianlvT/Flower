package orion_pax.dao;

import orion_pax.entity.Project;

public interface ProjectMapper {
    int insert(Project record);

    int insertSelective(Project record);
}