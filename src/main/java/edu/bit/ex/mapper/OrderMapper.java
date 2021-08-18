package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.cart.OrderPaymentVO;

@Mapper
public interface OrderMapper {
    List<OrderPaymentVO> orderList(int member_idx); // 장바구니 정보, 주문자 정보 리스트
    int sumMoney(int member_idx); // 장바구니 합계
    void insertOrder(OrderPaymentVO orderPaymentVO); // 주문정보 넣기
    void insertPoint(OrderPaymentVO orderPaymentVO); // 적립금 적립
}
