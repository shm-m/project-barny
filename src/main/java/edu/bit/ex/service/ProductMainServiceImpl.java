package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.ProductMainMapper;
import edu.bit.ex.vo.ProductMainVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductMainServiceImpl implements ProductMainService {
    @Autowired
    private ProductMainMapper productMainMapper;

    @Override
    public List<ProductMainVO> getList() {
        log.info("getList()...");
        return productMainMapper.getList();
    }

}
