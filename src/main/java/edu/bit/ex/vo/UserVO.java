package edu.bit.ex.vo;

import java.sql.Date;
import java.sql.Timestamp;
/*
bid number(4) primary key,
bname VARCHAR2(20),
btitle VARCHAR2(100),
bcontent VARCHAR2(300),
bdate date default sysdate,
bhit number(4) default 0,
bgroup number(4),
bstep number(4),
bindent number(4)*/

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
public class UserVO {
   private String member_id;
   private int member_idx;
   private String member_name;
   private String nickname;
   private String pw;
   private String email;
   private String payment;
   private String tel;
   private String address;
   private Date date_of_birth;
   private int point;
   
}