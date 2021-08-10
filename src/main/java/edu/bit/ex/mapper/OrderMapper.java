package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.cart.OrderPaymentVO;

@Mapper
public interface OrderMapper {
    List<OrderPaymentVO> orderList(int member_idx); // 장바구니 정보, 주문자 정보 리스트

}
