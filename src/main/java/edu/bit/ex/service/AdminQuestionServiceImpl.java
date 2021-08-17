package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.AdminQuestionMapper;
import edu.bit.ex.vo.AdminQuestionVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AdminQuestionServiceImpl implements AdminQuestionService {
     @Autowired
     private AdminQuestionMapper adminQuestionMapper; 

     @Override
     public List<AdminQuestionVO> getList(int member_idx){
          return adminQuestionMapper.getList();
     }

     @Override
     public AdminQuestionVO get(int board_id){
          log.info("service:get()..");
          return adminQuestionMapper.read(board_id);

     }

     @Override
     public void writeQuestion(AdminQuestionVO adminQuestionVO){
          adminQuestionMapper.insertQuestion(adminQuestionVO);
     }

    @Override
    public void writeReply(AdminQuestionVO adminQuestionVO){
         adminQuestionMapper.updateShape(adminQuestionVO);
         adminQuestionMapper.insertReply(adminQuestionVO);
    }
     
     

}
