package edu.bit.ex.service;

import java.sql.Date;
import java.util.List;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.EventVO;
import edu.bit.ex.vo.MemberVO;

public interface EventService {
    List<EventVO> getList();

    EventVO get(int board_id);

    void write(EventVO eventVO);

    // paging
    public int getTotal(Criteria cri);

    public List<EventVO> getList(Criteria cri);

    void modify(EventVO eventVO);

    int remove(int board_id);

    // Update Total Point
    void updatePoint(MemberVO memberVO);

    void participate(int member_idx);

    String checkPart(int member_idx);

    // 카드 게임 포인트
    void updatePoint2(MemberVO memberVO);

    void participate2(int member_idx);
}
