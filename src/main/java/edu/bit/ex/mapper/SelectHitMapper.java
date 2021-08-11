package edu.bit.ex.mapper;

import edu.bit.ex.vo.ProductMainVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SelectHitMapper {

    int getHit(int board_id);

    void updateLike(ProductMainVO productMainVO);

    int getLike(int board_id);
}
