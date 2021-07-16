package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.ProductMainVO;

public interface ProductMainService {
    List<ProductMainVO> getList();
    ProductMainVO get(int product_id);

}
