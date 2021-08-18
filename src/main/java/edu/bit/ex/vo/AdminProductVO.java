package edu.bit.ex.vo;





import lombok.Data;


@Data
public class AdminProductVO {
    private int product_id; //상품 번호
    private String product_name; //상품명
    private int stock; //재고량
    private int price; //가격
    private int category_num; //상품 분류 번호
    private int image_id; //이미지 번호
    private String image_name; //이미지 이름
    private String image_extension; //확장자
    private String image_route; //경로
    private String image_uuid; //이미지 uuid



}
