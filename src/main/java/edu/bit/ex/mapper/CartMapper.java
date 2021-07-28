package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.cart.CartVO;

@Mapper
public interface CartMapper {
    List<CartVO> getList(); // 장바구니 리스트 불러오기
    void write(CartVO cartVO); // 장바구니 담기
    void update(CartVO cartVO); // 장바구니 수정
    int delete(int member_idx); // 장바구니 삭제
    
	int countCart(int member_idx, String product_name); // 장바구니 동일상품 확인
	void updateCart(CartVO cartVO); // 장바구니 동일상품 확인 시 수량수정
	
	List<CartVO> read(int member_idx);
}
