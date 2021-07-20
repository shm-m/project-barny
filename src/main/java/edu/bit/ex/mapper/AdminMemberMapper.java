package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.AdminMemberVO;


@Mapper
public interface AdminMemberMapper {
    public List<AdminMemberVO> getList();
    int insertMember(AdminMemberVO adminMemberVO);
    //AdminMemberVO read(int member_idx);
    
     //void updateHit(int member_idx); 
     
     
} 
