package edu.bit.ex.mapper;

import edu.bit.ex.vo.OrderVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DashBoardMapper {

    List<OrderVO> getOrders();


}
