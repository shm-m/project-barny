package edu.bit.ex.vo.account;

import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.cart.CartVO;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;
import java.util.List;

@Getter
public class MemberContext extends User {

    private final MemberVO memberVO;
    private final List<CartVO> cartList;


    public MemberContext(MemberVO memberVO, List<CartVO> cartList, Collection<? extends GrantedAuthority> authorities) {
        super(memberVO.getMember_id(), memberVO.getPw(), authorities);
        this.memberVO = memberVO;
        this.cartList = cartList;
    }
}
