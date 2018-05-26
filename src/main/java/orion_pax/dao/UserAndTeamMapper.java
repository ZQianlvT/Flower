package orion_pax.dao;

import orion_pax.entity.UserAndTeam;

public interface UserAndTeamMapper extends BaseMapper<UserAndTeam>{
    int deleteByTIdAndUId(UserAndTeam userAndTeam);
}