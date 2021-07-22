package edu.bit.ex.service;

import java.util.List;

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

}
