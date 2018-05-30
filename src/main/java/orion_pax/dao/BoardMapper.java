package orion_pax.dao;

import orion_pax.entity.Board;

import javax.swing.border.Border;

public interface BoardMapper extends BaseMapper<Board> {
    int deleteByPrimaryKey(String id);

    int insert(Board record);

    int insertSelective(Board record);

    Board selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Board record);

    int updateByPrimaryKey(Board record);

    int selectMaxIndex(Board board);
}