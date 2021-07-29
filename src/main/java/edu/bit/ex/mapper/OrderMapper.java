package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.cart.OrderPaymentVO;

@Mapper
public interface OrderMapper {
    List<OrderPaymentVO> getList(); // 장바구니 정보, 주문자 정보 리스트
	void write(OrderPaymentVO orderVO); // 수령인 추가

}
