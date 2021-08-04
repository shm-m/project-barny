package edu.bit.ex.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SelectHitMapper {

    int getHit(int board_id);

}
