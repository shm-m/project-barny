package edu.bit.ex.service;

import edu.bit.ex.vo.OrderVO;

import java.util.List;
import java.util.Map;


public interface DashBoardService {

    List<OrderVO> getOrders();

    Map<Integer, Integer> extractMonthTotalPrice(List<OrderVO> orders);

    Map<Integer, Integer> extractDayTotalPrice(List<OrderVO> orders);


}