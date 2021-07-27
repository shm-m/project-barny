package edu.bit.ex.service.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.CartMapper;
import edu.bit.ex.vo.cart.CartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;

    // 장바구니 리스트
    @Override
    public List<CartVO> getList() {
        log.info("getList()...");
        return cartMapper.getList();
    }

    // 장바구니 담기
	@Override
	public void write(CartVO cartVO) {
		cartMapper.write(cartVO);
		
	}

	// 장바구니 수정
	@Override
	public void modify(CartVO cartVO) {
		cartMapper.update(cartVO);
		
	}

	// 장바구니 삭제
	@Override
	public int remove(int member_idx) {
		return cartMapper.delete(member_idx);
	}
	
	// 장바구니 동일상품 확인
	 @Override
	public int countCart(int member_idx, String product_name) {
		return cartMapper.countCart(member_idx, product_name);
	
	 }
		
	// 장바구니에 동일한 상품 있을 시 수량 변경
	@Override
	public void updateCart(CartVO cartVO) {
		cartMapper.updateCart(cartVO);
		
	}

	@Override
	public List<CartVO> read(int member_idx) {
		log.info("read()..");
		return cartMapper.read(member_idx);
	}
       


}
