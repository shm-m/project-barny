package edu.bit.ex.vo;

import java.sql.Date;

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
public class ProductMainVO {
    private int product_id;
    private String product_name;
    private int price;
    private int category_num;

    // 아래는 후기
    private int board_id;
    private String b_title;
    private String b_content;
    private Date b_date;
    private int board_type_id;
    private int b_hit;
    private int like_count;
    private String nickname;
    private int member_idx;

}
