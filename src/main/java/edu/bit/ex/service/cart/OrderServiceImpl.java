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
    
	// 장바구니 합계
    @Override
	public int sumMoney(int member_idx) {
		return orderMapper.sumMoney(member_idx);
	}
    
    // 결제정보 넣기
	@Override
	public void insertOrder(OrderPaymentVO orderPaymentVO) {
		orderMapper.insertOrder(orderPaymentVO);
		
	}

	// 적립금 적립
	@Override
	public void insertPoint(OrderPaymentVO orderPaymentVO) {
		orderMapper.insertPoint(orderPaymentVO);
		
	}
}
