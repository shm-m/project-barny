package edu.bit.ex.service.cart;

import java.util.List;

import edu.bit.ex.vo.cart.CartVO;

public interface CartService {
    List<CartVO> getList(); // 장바구니 리스트 보기    
    void write(CartVO cartVO); // 장바구니 추가
    void modify(CartVO cartVO);// 장바구니 수정
    int remove(int member_id); // 장바구니 삭제

    int countCart(int member_id, String product_name); // 장바구니 동일상품 확인
	void updateCart(CartVO cartVO); // 장바구니 동일상품 확인 시 수량수정

    void addProduct(CartVO cartVO);
	
	List<CartVO> read(int member_idx);
	


}
