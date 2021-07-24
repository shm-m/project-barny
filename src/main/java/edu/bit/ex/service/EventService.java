package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.EventVO;

public interface EventService {
    List<EventVO> getList();

    EventVO get(int board_id);

    void write(EventVO eventVO);

    // paging
    public int getTotal(Criteria cri);

    public List<EventVO> getList(Criteria cri);

    void modify(EventVO eventVO);

    int remove(int board_id);

}
