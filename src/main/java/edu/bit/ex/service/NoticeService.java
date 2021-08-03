package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;

public interface NoticeService {
    List<NoticeVO> getList();

    void write(NoticeVO noticeVO);

    NoticeVO get(int board_id);

    void modify(NoticeVO noticeVO);

    int remove(int board_id);

    // paging
    public int getTotal(Criteria cri);

    public List<NoticeVO> getList(Criteria cri);

    // delete by checkbox
    public void delete2(String board_id);

    // Update Hit Number
    public void updateHit(int board_id);
}
