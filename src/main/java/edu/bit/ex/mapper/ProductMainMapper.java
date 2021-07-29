package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.ProductMainVO;

@Mapper
public interface ProductMainMapper {
    List<ProductMainVO> getList(); // 상품보기 메인(구독패키지)

    List<ProductMainVO> getList1(); // 상품보기 - 술

    List<ProductMainVO> getList2(); // 상품보기 - 안주

    ProductMainVO read(int product_id); // 상품 상세보기

    List<ProductMainVO> getListReview(int product_id); // 상품 당 후기

    void updateHit(ProductMainVO productMainVO);

    void writeReview(ProductMainVO productMainVO);
}
