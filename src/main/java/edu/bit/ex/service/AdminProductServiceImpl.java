package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import edu.bit.ex.mapper.AdminProductMapper;
import edu.bit.ex.vo.AdminProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminProductServiceImpl implements AdminProductService {
    @Autowired
    private AdminProductMapper adminProductMapper; 
    
    @Override
    public List<AdminProductVO> getList(){
        System.out.println("getList()..");
        return adminProductMapper.getList();
    }
    
    // @Override
    // public void writeMember(AdminProductVO adminProductVO) {
    //     adminProductMapper.insertMember(adminProductVO);
    // }
    
   
     @Override 
     public AdminProductVO get(int member_idx) {
     log.info("service:get().."); 
     
     return adminProductMapper.read(member_idx);
     }

    //  @Override
    //  public void modify(AdminMemberVO adminMemberVO){
    //   log.info("service:modify()..");
    //   adminMemberMapper.update(adminMemberVO);
    //  }

    //  @Override
    //  public void delete(int member_idx){
    //      log.info("service:delete()..");
    //      adminMemberMapper.delete(member_idx);
    //  }
      
      //@Override public void upHit(int member_idx) {
      //adminMemberMapper.updateHit(member_idx);
      //}
     
    

}
