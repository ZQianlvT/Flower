package orion_pax.dao;

import orion_pax.entity.Reply;

public interface ReplyMapper {
    int insert(Reply record);

    int insertSelective(Reply record);
}