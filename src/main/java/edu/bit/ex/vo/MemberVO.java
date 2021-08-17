package edu.bit.ex.vo;

import edu.bit.ex.vo.account.AuthVO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberVO {

    private String member_id;
    private int member_idx;
    private String member_name;
    private String nickname;
    private String pw;
    private String email;
    private String payment;
    private String tel;
    private String address;
    private Date date_of_birth;
    private int point;

    private List<AuthVO> authList ;


}




