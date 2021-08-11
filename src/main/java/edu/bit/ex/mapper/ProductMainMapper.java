package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.FileVO;
import edu.bit.ex.vo.ProductMainVO;

@Mapper
public interface ProductMainMapper {
    List<ProductMainVO> getList(); // 상품보기 메인(구독패키지)

    List<ProductMainVO> getList1(); // 상품보기 - 술

    List<ProductMainVO> getList2(); // 상품보기 - 안주

    ProductMainVO read(int product_id); // 상품 상세보기

    List<ProductMainVO> getListReview(int product_id); // 상품 당 후기

    void updateHit(ProductMainVO productMainVO); // 조회수

    void writeReview(ProductMainVO productMainVO); // 후기 추가
    
    // 페이징 처리 함수
    // 술
    int getTotalCount1(Criteria cri);
    List<ProductMainVO> getListWithPaging1(Criteria cri);
    
    // 안주
    int getTotalCount2(Criteria cri);
    List<ProductMainVO> getListWithPaging2(Criteria cri);
    

    void insertList(FileVO fileVO);

    // 후기 페이징

    List<ProductMainVO> getListWithPaging(@Param("cri") Criteria cri, @Param("product_id") int product_id);

    int getTotalCount(@Param("cri") Criteria cri, @Param("product_id") int product_id);

}
