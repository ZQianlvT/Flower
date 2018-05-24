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
     * 根据浏览器提交的参数注册用户
     *
     * @param user 封装用户信息的User
     * @param teamName 封装团队名称的字符串
     * @return 注册成功的User，注册失败返回null
     */
    @Override
    public User register(User user,String teamName) {
        //判断用户邮箱是否存在
        if(userMapper.getByEmail(user)!=null){
            return null;
        }
        //添加一个用户
        user.setId(UUID.randomUUID().toString().replace("-",""));
        user.setImg("/head/ChatHead.jpg");
        userMapper.insert(user);
        //添加一个团队
        Team team = new Team();
        team.setId(UUID.randomUUID().toString().replace("-",""));
        team.setuId(user.getId());
        team.setTotalMembers(1);
        team.setInviteLink(UUID.randomUUID().toString().replace("-",""));
        team.setCreateTime(new Date());
        team.setName(teamName);
        teamMapper.insert(team);
        //添加一条用户团队中间表记录
        UserAndTeam userAndTeam = new UserAndTeam();
        userAndTeam.setId(UUID.randomUUID().toString().replace("-",""));
        userAndTeam.setuId(user.getId());
        userAndTeam.settId(team.getId());
        userAndTeamMapper.insert(userAndTeam);
        return user;
    }

    /**
     * 根据浏览器提交的用户邮箱和密码登录
     *
     * @param user 封装用户邮箱和密码的User
     * @return 登录成功的User，不成功返回null
     */
    @Override
    public User login(User user) {
        //根据用户邮箱和密码查询
        return userMapper.getByEmailAndPwd(user);
    }

    /**
     * 根据用户邮箱判断是否存在
     *
     * @param user 封装用户邮箱的User
     * @return true存在 false不存在
     */
    @Override
    public boolean isExistEmail(User user) {
        return userMapper.getByEmail(user) != null;
    }
}
