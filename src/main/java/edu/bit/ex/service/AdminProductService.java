package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.AdminProductVO;






public interface AdminProductService {
    public List<AdminProductVO> getList();
    // void writeMember(AdminProductVO adminProductVO);
    AdminProductVO get(int member_idx);

    // void modify(AdminProductVO adminProductVO);
    // void delete(int member_idx);
    
}
