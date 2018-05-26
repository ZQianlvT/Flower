package orion_pax.dao;

import orion_pax.entity.Team;
import orion_pax.entity.User;

import java.util.List;

public interface UserMapper extends BaseMapper<User> {
    /**
     * 根据用户邮箱查询用户
     *
     * @param user 封装用户邮箱的User
     * @return 查询到的User，没有返回null
     */
    User getByEmail(User user);

    /**
     * 根据用户邮箱和密码查询用户
     *
     * @param user 封装用户邮箱和密码的User
     * @return 查询到的User，没有返回null
     */
    User getByEmailAndPwd(User user);

    /**
     * 根据团队id查询出用户列表
     *
     * @param team 封装团队id的Team对象
     * @return 查询到的用户列表
     */
    List<User> getByTeamId(Team team);
}