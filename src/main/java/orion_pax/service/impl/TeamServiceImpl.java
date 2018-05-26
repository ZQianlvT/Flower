package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.entity.UserAndTeam;
import orion_pax.service.TeamService;

import java.util.List;

@Service("teamService")
public class TeamServiceImpl extends BaseServiceImpl<Team> implements TeamService {
    /**
     * 通过管理员id查询Team对象
     *
     * @param user 封装管理员id的User
     * @return 查询到的Team
     */
    @Override
    public Team getByUId(User user) {
        return teamMapper.getByUId(user);
    }

    /**
     * 通过邀请链接获取Team对象
     *
     * @param team 封装邀请链接的team
     * @return 查询到的Team
     */
    @Override
    public Team getByInviteLink(Team team) {
        return teamMapper.getByInviteLink(team);
    }

    /**
     * 向用户团队中间表添加一条数据
     *
     * @param userAndTeam 封装数据的UserAndTeam对象
     * @return 一个正整数，大于0添加成功。
     */
    @Override
    public int joinTeam(UserAndTeam userAndTeam) {
        return userAndTeamMapper.insert(userAndTeam);
    }

}
