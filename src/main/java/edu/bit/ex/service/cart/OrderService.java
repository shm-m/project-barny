package edu.bit.ex.service.cart;

import java.util.List;

import edu.bit.ex.vo.cart.OrderPaymentVO;

public interface OrderService {
    List<OrderPaymentVO> orderList(int member_idx); // 장바구니 리스트, 주문자 리스트 보기    

}
