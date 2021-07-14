package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.ProductMainVO;

@Mapper
public interface ProductMainMapper {
    List<ProductMainVO> getList();
}
