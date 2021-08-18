package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.AdminQuestionVO;

public interface AdminQuestionService {
     //마이페이지
     public List<AdminQuestionVO> getList(int member_idx);
     
     //글쓰기
     public void writeQuestion(AdminQuestionVO adminQuestionVO);

     //상세보기
     public AdminQuestionVO get(int board_id);

     //답글
     void writeReply(AdminQuestionVO adminQuestionVO);

     public List<AdminQuestionVO> getReply(int board_id);
}
