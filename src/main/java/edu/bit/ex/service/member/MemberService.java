package edu.bit.ex.service.member;


import java.util.List;

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
    
    
    //회원정보수정



//	void updateUser(MemberVO memberVO);

	int updateUser(MemberVO memberVO);

//	void deleteUser(MemberVO memberVO);

//	String getPw(MemberVO memberVO);

	void deleteUser(MemberVO memberVO);





}
