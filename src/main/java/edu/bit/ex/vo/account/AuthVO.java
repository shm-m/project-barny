package edu.bit.ex.vo.account;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class AuthVO {

    private String role;
    private int member_idx;
    private int active;

}
