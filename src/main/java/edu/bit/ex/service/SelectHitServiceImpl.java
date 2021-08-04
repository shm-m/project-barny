package edu.bit.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.SelectHitMapper;

@Service
public class SelectHitServiceImpl implements SelectHitService {

    @Autowired
    private SelectHitMapper selectHitMapper;

    @Override
    public int getHit(int board_id) {
        return selectHitMapper.getHit(board_id);
    }

}
