package edu.bit.ex.service.member;


import edu.bit.ex.vo.MemberVO;

public interface MemberService {

    boolean checkDuplicateId(String member_id);

    void addUser(MemberVO memberVO);


    boolean checkValidatePw(String pw);

    boolean emailCheck(String email);

    boolean checkValidateId(String member_id);

    boolean checkValidateNickname(String nickname);

    MemberVO findId(String email);

    int changePw(String pw, String member_id, String email);



}
