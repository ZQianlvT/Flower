package orion_pax.dao;

import orion_pax.entity.Board;

import javax.swing.border.Border;

public interface BoardMapper extends BaseMapper<Board> {
    int selectMaxIndex(Board board);
}