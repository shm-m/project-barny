package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.AdminOrdersVO;




@Mapper
public interface AdminOrdersMapper {
    public List<AdminOrdersVO> getList();
    AdminOrdersVO read(int member_idx);
    void update_payment(AdminOrdersVO adminOrdersVO);
    void udpate_total_price(AdminOrdersVO adminOrdersVO);
     
} 
