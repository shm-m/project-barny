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
public class OrderDetailVO {
	private int order_detail_id;
	private int product_id;
	private String product_name;
	private int product_qty;
	private int order_id;
	
	private int money;
	
}
