package edu.bit.ex.vo.account;

import edu.bit.ex.vo.MemberVO;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

@Getter
public class MemberContext extends User {

    private final MemberVO memberVO;


    public MemberContext(MemberVO memberVO, Collection<? extends GrantedAuthority> authorities) {
        super(memberVO.getMember_id(), memberVO.getPw(), authorities);
        this.memberVO = memberVO;
    }
}
