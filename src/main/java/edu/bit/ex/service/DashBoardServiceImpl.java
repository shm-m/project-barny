package edu.bit.ex.service;

import edu.bit.ex.mapper.DashBoardMapper;
import edu.bit.ex.vo.OrderVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.summingInt;

@Service
@RequiredArgsConstructor
public class DashBoardServiceImpl implements DashBoardService {

    private final DashBoardMapper dashBoardMapper;


    @Override
    public List<OrderVO> getOrders() {

        return dashBoardMapper.getOrders();
    }

    @Override
    public Map<Integer, Integer> extractMonthTotalPrice(List<OrderVO> orders) {

            Map<Integer, Integer> monthTotalPrice = orders
                    .stream()
                    .collect(
                            groupingBy(orderVO -> orderVO.getOrder_date()
                                            .toLocalDate()
                                            .getMonthValue(),
                                    summingInt(OrderVO::getTotal_price)));

            return monthTotalPrice;
    }

    @Override
    public Map<Integer, Integer> extractDayTotalPrice(List<OrderVO> orders) {

        Map<Integer, Integer> dayTotalPrice = orders
                .stream()
                .filter(e -> e.getOrder_date().toLocalDate().getMonthValue() == LocalDate.now().getMonthValue())
                .collect(groupingBy(orderVO -> orderVO.getOrder_date()
                                .toLocalDate()
                                .getDayOfMonth(),
                        summingInt(OrderVO::getTotal_price)));

        return dayTotalPrice;
    }
}
