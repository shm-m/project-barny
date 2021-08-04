package edu.bit.ex.service.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.OrderMapper;
import edu.bit.ex.vo.cart.OrderPaymentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    // 장바구니, 주문자 리스트 
    @Override
    public List<OrderPaymentVO> orderList(int member_idx) {
        log.info("orderList()...");
        return orderMapper.orderList(member_idx);
    }       

}
