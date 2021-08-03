package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;

@Mapper
public interface NoticeMapper {
    List<NoticeVO> getList();

    void write(NoticeVO noticeVO);

    void update(NoticeVO noticeVO);

    NoticeVO read(int board_id);

    int delete(int board_id);

    void delete2(String board_id);

    public void updateHit(int board_id);

    // 페이징 처리 함수
    int getTotalCount(Criteria cri);

    List<NoticeVO> getListWithPaging(Criteria cri);


}
