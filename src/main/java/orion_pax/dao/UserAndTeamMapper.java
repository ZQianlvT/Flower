package orion_pax.dao;

import orion_pax.entity.UserAndTeam;

public interface UserAndTeamMapper {
    int insert(UserAndTeam record);

    int insertSelective(UserAndTeam record);
}