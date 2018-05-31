package orion_pax.dao;


import orion_pax.entity.UserAndTeam;

import java.util.Map;

public interface UserAndTeamMapper extends BaseMapper<UserAndTeam>{
    int deleteByTIdAndUId(UserAndTeam userAndTeam);

    int deleteByTIdAndUIds(Map<String, Object> map);

    int countsMembers(UserAndTeam userAndTeam);
}