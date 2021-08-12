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
public class CartVO {
	private int member_idx;
	private int product_id;
    private String product_name;
    private int product_qty;
    private int price;
    
    private int money;

}
