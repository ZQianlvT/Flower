package orion_pax.service;

import orion_pax.entity.User;

/**
 * 用户模块
 * 业务层接口
 *
 * @author OrionPax
 */
public interface UserService extends BaseService<User> {
    /**
     * 根据用户邮箱获取用户
     *
     * @param user 封装用户邮箱的User
     * @return 注册成功的User，注册失败返回null
     */
    User register(User user,String teamName);
}
