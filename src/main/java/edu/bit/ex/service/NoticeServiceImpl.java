package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.NoticeMapper;
import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public List<NoticeVO> getList() {
        log.info("getList()...");
        return noticeMapper.getList();
    }

    @Override
    public int getTotal(Criteria cri) {
        return noticeMapper.getTotalCount(cri);
    }

    @Override
    public List<NoticeVO> getList(Criteria cri) {
        return noticeMapper.getListWithPaging(cri);
    }

    @Override
    public void write(NoticeVO noticeVO) {
        noticeMapper.write(noticeVO);

    }

    @Override
    public NoticeVO get(int board_id) {

        return noticeMapper.read(board_id);
    }

    @Override
    public void modify(NoticeVO noticeVO) {
        noticeMapper.update(noticeVO);

    }

    @Override
    public int remove(int board_id) {

        return noticeMapper.delete(board_id);
    }

}
