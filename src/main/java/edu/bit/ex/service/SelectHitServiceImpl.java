package edu.bit.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.SelectHitMapper;
import edu.bit.ex.vo.ProductMainVO;

@Service
public class SelectHitServiceImpl implements SelectHitService {

    @Autowired
    private SelectHitMapper selectHitMapper;

    @Override
    public int getHit(int board_id) {
        return selectHitMapper.getHit(board_id);
    }

    @Override
    public void updateLike(ProductMainVO productMainVO) {
        selectHitMapper.updateLike(productMainVO);

    }

    @Override
    public int getLike(int board_id) {
        return selectHitMapper.getLike(board_id);
    }

}
