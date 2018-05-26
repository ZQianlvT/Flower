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

    /**
     * 通过邀请链接获取Team对象
     *
     * @param team 封装邀请链接的team
     * @return 查询到的Team
     */
    Team getByInviteLink(Team team);
}