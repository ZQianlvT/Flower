package orion_pax.dao;

import orion_pax.entity.Discussion;

public interface DiscussionMapper {
    int insert(Discussion record);

    int insertSelective(Discussion record);
}