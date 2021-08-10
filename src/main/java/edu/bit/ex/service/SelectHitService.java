package edu.bit.ex.service;

import edu.bit.ex.vo.ProductMainVO;

public interface SelectHitService {

    int getHit(int board_id);

    void updateLike(ProductMainVO productMainVO);

    int getLike(int board_id);

}
