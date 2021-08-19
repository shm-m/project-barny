package edu.bit.ex.vo.cart;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OrderPaymentVO {
    // 주문자 정보(회원정보)
    private int member_idx;
    private String member_id;
    private String member_name;
    private String tel;
    private String email;
    private String address;
    private int point;
    private int money;
    
    // 주문테이블
    private int order_id;
    private String order_date;   
    private int total_price;

}
