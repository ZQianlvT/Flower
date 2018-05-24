package orion_pax.dao;

import orion_pax.entity.User;

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
}