package edu.bit.ex.service.cart;

import java.util.List;

import edu.bit.ex.vo.cart.CartVO;

public interface CartService {
    // List<CartVO> cartMoney(); // 장바구니 리스트 보기
    List<CartVO> cartList(int member_idx); // 장바구니 목록보기	
    void writeCart(CartVO cartVO); // 장바구니 추가
    void updateCart(CartVO cartVO); // 장바구니 안비워져있으면 목록에서 추가 

    void modify(CartVO cartVO);// 장바구니 수정
   
    void removeAll(int member_idx); // 장바구니 전체 삭제(비우기)
    void removeProduct(int product_id); // 장바구니 개별삭제
    int sumMoney(int member_idx); // 장바구니 금액 합계    

    int countCart(int member_idx, int product_id); // 장바구니 동일상품 확인
    void modifyCart(CartVO cartVO); // 장바구니 동일상품 확인 시 수량수정
	// void update(int product_id); // 장바구니 수정
	


}
