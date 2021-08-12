package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.EventMapper;
import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.EventVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EventServiceImpl implements EventService {

    @Autowired
    private EventMapper eventMapper;

    @Override
    public List<EventVO> getList() {
        log.info("getList()...");
        return eventMapper.getList();
    }

    // paging
    @Override
    public int getTotal(Criteria cri) {
        return eventMapper.getTotalCount(cri);
    }

    @Override
    public List<EventVO> getList(Criteria cri) {
        return eventMapper.getListWithPaging(cri);

    }

    @Override
    public EventVO get(int board_id) {
        return eventMapper.read(board_id);
    }

    @Override
    public void write(EventVO eventVO) {
        eventMapper.write(eventVO);

    }

    @Override
    public void modify(EventVO eventVO) {
        eventMapper.update(eventVO);

    }

    @Override
    public int remove(int board_id) {
        return eventMapper.delete(board_id);
    }

    @Override
    public void updatePoint(MemberVO memberVO) {
        eventMapper.updatePoint(memberVO);
    }
}
