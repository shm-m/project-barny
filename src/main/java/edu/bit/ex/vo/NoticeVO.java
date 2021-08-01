package edu.bit.ex.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NoticeVO {
    private int board_id;
    private String b_title;
    private String b_content;
    private Date b_date;
    private int board_type_id;
    private int b_hit;
}
