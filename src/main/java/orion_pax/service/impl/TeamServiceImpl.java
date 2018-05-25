package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.service.TeamService;

@Service("TeamService")
public class TeamServiceImpl extends BaseServiceImpl<Team> implements TeamService {
    /**
     * 通过管理员id查询Team对象
     *
     * @param user 封装管理员id的User
     * @return 查询到的Team
     */
    @Override
    public Team getByUId(User user) {
        return null;
    }
}
