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

    // 장바구니 리스트
    @Override
    public List<OrderPaymentVO> getList() {
        log.info("getList()...");
        return orderMapper.getList();
    }

    // 장바구니 담기
	@Override
	public void write(OrderPaymentVO orderVO) {
		orderMapper.write(orderVO);
		
	}
       

}
