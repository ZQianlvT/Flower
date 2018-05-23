package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.entity.UserAndTeam;
import orion_pax.service.UserService;

import java.util.Date;
import java.util.UUID;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    /**
     * 根据用户邮箱获取用户
     *
     * @param user 封装用户邮箱的User
     * @return 注册成功的User，注册失败返回null
     */
    @Override
    public User register(User user,String teamName) {
        //判断用户邮箱是否存在
        if(userMapper.getByEmail(user)!=null){
            return null;
        }
        //添加一个用户
        user.setId(UUID.randomUUID().toString());
        user.setImg("/head/ChatHead.jpg");
        userMapper.insert(user);
        //添加一个团队
        Team team = new Team();
        team.setId(UUID.randomUUID().toString());
        team.setuId(user.getId());
        team.setTotalMembers(1);
        team.setInviteLink(UUID.randomUUID().toString());
        team.setCreateTime(new Date());
        team.setName(teamName);
        teamMapper.insert(team);
        //添加一条用户团队中间表记录
        UserAndTeam userAndTeam = new UserAndTeam();
        userAndTeam.setId(UUID.randomUUID().toString());
        userAndTeam.setuId(user.getId());
        userAndTeam.settId(team.getId());
        userAndTeamMapper.insert(userAndTeam);
        return user;
    }
}
