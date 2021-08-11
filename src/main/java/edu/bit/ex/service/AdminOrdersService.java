package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.AdminOrdersVO;

public interface AdminOrdersService {
     public List<AdminOrdersVO> getList();
     
     AdminOrdersVO get(int member_idx);
     void ordersModify(AdminOrdersVO adminOrdersVO);
     
}
