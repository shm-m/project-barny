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
public class OrderVO {
	// 장바구니 정보
	private int member_idx;
    private String product_name;
    private int product_qty;
    private int price;

    // 주문자 정보(회원정보)
    private String member_id;
    private String member_name;
    private String tel;
    private String address;

}
