package orion_pax.dao;

import orion_pax.entity.Team;

public interface TeamMapper {
    int insert(Team record);

    int insertSelective(Team record);
}