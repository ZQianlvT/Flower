package orion_pax.dao;

import orion_pax.entity.Team;
import orion_pax.entity.User;

public interface TeamMapper extends BaseMapper<Team> {
    /**
     * 通过管理员id查询Team对象
     *
     * @param user 封装管理员id的User
     * @return 查询到的Team
     */
    Team getByUId(User user);
}