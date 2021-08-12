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
public class BoardVO {
	private int board_id;
	private Date b_date;
	private String b_title;
	private String b_content;
	private int board_type_id;
	private int member_idx;
	private int b_hit;
	private int b_group;
	private int b_indent;
	private int b_step;
	private int product_id;
	private String product_name;
	private int like_count;

}
