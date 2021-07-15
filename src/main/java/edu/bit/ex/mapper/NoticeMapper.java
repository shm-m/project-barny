package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.vo.NoticeVO;

@Mapper
public interface NoticeMapper {
    List<NoticeVO> getList();

    void write(NoticeVO noticeVO);

    // 페이징 처리 함수
    int getTotalCount();

    List<NoticeVO> getListWithPaging(Criteria cri);

}
