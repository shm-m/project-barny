package edu.bit.ex.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FileVO {
	private int board_id;
	private int product_id;
	private int image_id;
	private String image_name;
	private String image_extension;
	private String image_route;

}
