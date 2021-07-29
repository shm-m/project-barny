package edu.bit.ex.service.cart;

import java.util.List;

import edu.bit.ex.vo.cart.OrderPaymentVO;

public interface OrderService {
    List<OrderPaymentVO> getList(); // 장바구니 리스트, 주문자 리스트 보기    
    void write(OrderPaymentVO cartVO); // 수령인 추가


}
