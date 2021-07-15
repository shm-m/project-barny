package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;

public interface NoticeService {
    List<NoticeVO> getList();

    // paging
    public int getTotal(Criteria cri);

    public List<NoticeVO> getList(Criteria cri);

}
