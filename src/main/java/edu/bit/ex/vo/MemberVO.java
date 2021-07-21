package edu.bit.ex.vo;

import edu.bit.ex.vo.account.AuthVO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberVO {
    @NotBlank(message="아이디를 입력해 주세요 ")
    private String member_id;
    private int member_idx;
    @NotBlank(message="이름을 입력해 주세요 ")
    private String member_name;
    private String nickname;
    private String pw;
    private String email;
    private String payment;
    private String tel;
    private String address;
    private Date date_of_birth;
    private int point;

    private List<AuthVO> authList = new ArrayList<>();


}




