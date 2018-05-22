package orion_pax.dao;

import orion_pax.entity.User;

public interface UserMapper {
    int insert(User record);

    int insertSelective(User record);
}