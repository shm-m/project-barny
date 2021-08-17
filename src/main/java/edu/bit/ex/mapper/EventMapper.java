package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.EventVO;

@Mapper
public interface EventMapper {
    List<EventVO> getList();

    EventVO read(int board_id);

    void write(EventVO eventVO);

    void update(EventVO eventVO);

    int delete(int board_id);

    // 페이징 처리 함수
    int getTotalCount(Criteria cri);

    List<EventVO> getListWithPaging(Criteria cri);

}
