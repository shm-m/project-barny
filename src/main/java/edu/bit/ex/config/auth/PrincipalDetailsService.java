package edu.bit.ex.config.auth;

import edu.bit.ex.mapper.CartMapper;
import edu.bit.ex.mapper.MemberMapper;
import edu.bit.ex.vo.account.MemberContext;
import edu.bit.ex.vo.cart.CartVO;
import edu.bit.ex.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Slf4j
@Service
public class PrincipalDetailsService implements UserDetailsService {


    @Autowired
    private MemberMapper memberMapper;
    
    @Autowired
    private CartMapper cartMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.warn("Load User By MemberVO number: " + username);
        // == MemberMapper 에서 가져옴==//
        MemberVO memberVO = memberMapper.getMember(username);        
        List<CartVO> cartList = cartMapper.read(memberVO.getMember_idx());

        log.warn("queried by MemberVO mapper: " + memberVO);

        if (memberVO == null) {
            throw new UsernameNotFoundException("User " + username + " Not Found!");
        } else if(cartList == null) {
        	throw new UsernameNotFoundException("cartList " + cartList + " Not Found!");
        }
        	
        Set<SimpleGrantedAuthority> collect = memberVO.getAuthList()
                .stream()
                .map(authVO -> authVO.getRole())
                .map(role -> new SimpleGrantedAuthority(role))
                .collect(Collectors.toSet());

        return new MemberContext(memberVO, cartList, collect);

    }
}
