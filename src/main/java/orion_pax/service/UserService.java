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
     * 根据浏览器提交的参数注册用户
     *
     * @param user 封装用户信息的User
     * @param teamName 封装团队名称的字符串
     * @return 注册成功的User，注册失败返回null
     */
    User register(User user,String teamName);

    /**
     * 根据浏览器提交的用户邮箱和密码登录
     *
     * @param user 封装用户邮箱和密码的User
     * @return 登录成功的User，不成功返回null
     */
    User login(User user);

    /**
     * 根据用户邮箱判断是否存在
     *
     * @param user 封装用户邮箱的User
     * @return true存在 false不存在
     */
    boolean isExistEmail(User user);

    /**
     * 根据用户邮箱和用户密码判断用户密码是否正确
     *
     * @param user 封装用户邮箱和用户密码的User
     * @return true正确 false不正确
     */
    boolean isRightPwd(User user);

}
