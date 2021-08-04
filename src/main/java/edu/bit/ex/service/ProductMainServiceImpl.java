package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.ProductMainMapper;
import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;
import edu.bit.ex.vo.ProductMainVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductMainServiceImpl implements ProductMainService {
    @Autowired
    private ProductMainMapper productMainMapper;

    // 상품보기 메인(구독패키지)
    @Override
    public List<ProductMainVO> getList() {
        log.info("getList()...");
        return productMainMapper.getList();
    }

    // 상품보기 - 술
    @Override
    public List<ProductMainVO> getList1() {
        log.info("getList1()...");
        return productMainMapper.getList1();
    }

    // 상품보기 - 안주
    @Override
    public List<ProductMainVO> getList2() {
        log.info("getList2()...");
        return productMainMapper.getList2();
    }

    // 상품 상세보기
    @Override
    public ProductMainVO get(int product_id) {
        log.info("service:get()..");

        return productMainMapper.read(product_id);
    }
    
    // 상품보기페이지 페이징 처리
    // 술
    @Override
    public int getTotal1(Criteria cri) {
        return productMainMapper.getTotalCount1(cri);
    }

    @Override
    public List<ProductMainVO> getList1(Criteria cri) {
        return productMainMapper.getListWithPaging1(cri);
    }
    
    // 안주
    @Override
    public int getTotal2(Criteria cri) {
        return productMainMapper.getTotalCount2(cri);
    }

    @Override
    public List<ProductMainVO> getList2(Criteria cri) {
        return productMainMapper.getListWithPaging2(cri);
    }

    // 상품 후기
    @Override
    public List<ProductMainVO> getListReview(int product_id) {
        return productMainMapper.getListReview(product_id);
    }

    // 후기 조회수
    @Override
    public void updateHit(ProductMainVO productMainVO) {
        productMainMapper.updateHit(productMainVO);

    }

    // 후기 추가
    @Override
    public void writeReview(ProductMainVO productMainVO) {
        productMainMapper.writeReview(productMainVO);

    }

}
