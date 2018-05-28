package orion_pax.dao;

import orion_pax.entity.Discussion;

public interface DiscussionMapper extends BaseMapper<Discussion>{
    int insert(Discussion record);

    int insertSelective(Discussion record);
}