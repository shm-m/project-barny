package edu.bit.ex.vo;



import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Data
public class AdminMemberVO {
    private String member_id;//아이디
    private String pw; //비밀번호
    private int member_idx;//회원 번호
    private String member_name;//회원 이름
    private String nickname;//닉네임
    private String email;//이메일
    private String payment;//결제수단
    private String tel;//전화번호
    private String address;//주소
    
    private Date date_of_birth;//생년월일 

    private int point;//포인트
      




}
