package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.AdminOrdersMapper;
import edu.bit.ex.vo.AdminOrdersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminOrdersServiceImpl implements AdminOrdersService {
     @Autowired
     private AdminOrdersMapper adminOrdersMapper;

     @Override
     public List<AdminOrdersVO> getList(){
          System.out.println("getList()..");
          return adminOrdersMapper.getList();
     }
     
     @Override 
     public AdminOrdersVO get(int member_idx){
          log.info("service:get()");

          return adminOrdersMapper.read(member_idx);
     }

     @Override
     public void ordersModify(AdminOrdersVO adminOrdersVO){
          log.info("service:ordersModify()");
          adminOrdersMapper.update_payment(adminOrdersVO);
     }
}
