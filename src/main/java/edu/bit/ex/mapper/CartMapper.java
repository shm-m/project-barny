package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.cart.CartVO;

@Mapper
public interface CartMapper {
    List<CartVO> cartList(int member_idx); // 장바구니 리스트 불러오기
    void insert(CartVO cartVO); // 장바구니 담기
    void update(CartVO cartVO); // 장바구니 수정
    void delete(int member_idx, int product_id); // 장바구니 삭제 체크박스
    int sumMoney(int member_idx); // 장바구니 합계
    
	int countCart(int member_idx, int product_id); // 장바구니 동일상품 확인
	void updateCart(CartVO cartVO); // 장바구니 동일상품 확인 시 수량수정
	
	List<CartVO> read(int member_idx);
	void insert2(CartVO cartVO); // 바로구매
	
}
