package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Team;
import orion_pax.entity.User;
import orion_pax.entity.UserAndTeam;
import orion_pax.service.UserService;

import java.util.*;

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

    /**
     * 根据用户邮箱和用户密码判断用户密码是否正确
     *
     * @param user 封装用户邮箱和用户密码的User
     * @return true正确 false不正确
     */
    @Override
    public boolean isRightPwd(User user) {
        user = userMapper.getByEmailAndPwd(user);
        return user != null;
    }

    /**
     * 根据团队id查询出用户列表
     *
     * @param team 封装团队id的Team对象
     * @return 查询到的用户列表
     */
    @Override
    public List<User> getByTeamId(Team team) {
        return userMapper.getByTeamId(team);
    }

    /**
     * 根据团队id和用户id，从当前团队中删除一个成员
     *
     * @param userAndTeam 封装团队id和用户id的UserAndTeam对象
     * @return 正整数，大于零删除成功
     */
    @Override
    public int removeMember(UserAndTeam userAndTeam) {
        //去用户团队中间表删除一条数据
        int i = userAndTeamMapper.deleteByTIdAndUId(userAndTeam);
        if(i>0){
            //修改团队表剩余成员数
            Team team = new Team();
            team.setId(userAndTeam.gettId());
            team = teamMapper.getByPK(team);
            team.setTotalMembers(team.getTotalMembers()-1);
            teamMapper.updateByPK(team);
        }
        return i;
    }

    /**
     * 根据团队id和用户id数组，从当前团队中删除多个成员
     *
     * @param ids    封装用户id的数组
     * @param teamId 团队id
     * @return 正整数，代表删除多少个用户
     */
    @Override
    public int removeMembers(String[] ids, String teamId) {
        //去用户团队中间表删除多条数据
        Map<String,Object> map = new HashMap<>();
        map.put("ids",ids);
        map.put("teamId",teamId);
        int i = userAndTeamMapper.deleteByTIdAndUIds(map);
        //修改团队表剩余成员数
        Team team = new Team();
        team.setId(teamId);
        team = teamMapper.getByPK(team);
        team.setTotalMembers(team.getTotalMembers()-i);
        teamMapper.updateByPK(team);
        return i;
    }
}
