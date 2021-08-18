package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.AdminProductVO;


@Mapper
public interface AdminProductMapper {
    public List<AdminProductVO> getList();
    // int insertMember(AdminMemberVO adminMemberVO);
    AdminProductVO read(int member_idx);
    // void update(AdminMemberVO adminMemberVO);
    
    //void delete(AdminMemberVO adminMemberVO);
    // void delete(int memebr_idx);
     //void updateHit(int member_idx); 
     
     
} 
