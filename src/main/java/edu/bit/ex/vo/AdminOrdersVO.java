package edu.bit.ex.vo;


import java.sql.Date;

import lombok.Data;


@Data
public class AdminOrdersVO {
   
   private int order_detail_id;
   private String Member_name;
   private String payment;
   private int order_id;
   private int total_price;
   private Date order_date;
   private int member_idx;


}
