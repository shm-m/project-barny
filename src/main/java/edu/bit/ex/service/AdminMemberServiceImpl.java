package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.AdminMemberMapper;
import edu.bit.ex.vo.AdminMemberVO;
import edu.bit.ex.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminMemberServiceImpl implements AdminMemberService {
    @Autowired
    private AdminMemberMapper adminMemberMapper; 
    
    @Override
    public List<AdminMemberVO> getList(){
        System.out.println("getList()..");
        return adminMemberMapper.getList();
    }
    
    @Override
    public void writeMember(AdminMemberVO adminMemberVO) {
        adminMemberMapper.insertMember(adminMemberVO);
    }
    
   
     //@Override public AdminMemberVO get(int member_idx) {
     //log.info("service:get().."); 
     
     //return adminMemberMapper.read(member_idx);
     //}
      
      //@Override public void upHit(int member_idx) {
      //adminMemberMapper.updateHit(member_idx);
      //}
     
    

}
