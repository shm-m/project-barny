package edu.bit.ex.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderVO {
	private int order_id;
	private Date order_date;
	private int total_price;
	private int member_idx;
	private int product_id;
	
	//배송상태
	private String ship_status_name;
	private int ship_status_id;
	private int ship_id;
	private Data ship_date;
}
