package orion_pax.dao;

import orion_pax.entity.Board;

public interface BoardMapper {
    int insert(Board record);

    int insertSelective(Board record);
}