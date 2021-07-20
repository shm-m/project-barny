package edu.bit.ex.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

    private int pageNum; // 페이지 번호
    private int amount; // 한페이지당 몇개의 데이터를 보여줄것인가?

    /* 검색 타입 */
    private String type;

    private String keyword; // 키워드 검색

    public Criteria() {
        this(1, 10); // 빠른 생성자 호출 기본값 1페이지 10개로 지정 크리테리아 객체 생성될때마다 디폴트로 들어감
    }

    public Criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }

    public String[] getTypeArr() {
        return type == null ? new String[] {} : type.split("");
    }
}
