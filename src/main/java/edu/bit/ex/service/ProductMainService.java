package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.ProductMainVO;

public interface ProductMainService {
    List<ProductMainVO> getList(); // 상품보기 메인(구독패키지)

    List<ProductMainVO> getList1(); // 술

    List<ProductMainVO> getList2(); // 안주

    ProductMainVO get(int product_id); // 상품 상세보기

    List<ProductMainVO> getListReview(int product_id); // 후기 리스트

    void updateHit(ProductMainVO productMainVO);

    void writeReview(ProductMainVO productMainVO); // 후기 글쓰기

    // 후기 페이징
    public List<ProductMainVO> getListReview(Criteria cri, int product_id);

    public int getTotal(Criteria cri, int product_id);

}
