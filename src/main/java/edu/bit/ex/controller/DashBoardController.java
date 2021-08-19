package edu.bit.ex.controller;

import edu.bit.ex.service.DashBoardService;
import edu.bit.ex.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Collection;
import java.util.List;
import java.util.Map;


@Controller
public class DashBoardController {
    @Autowired
    private DashBoardService dashBoardService;

    @GetMapping("admin/statistics")
    public String statistics(Model model) {

        List<OrderVO> orders = dashBoardService.getOrders();
        //월별 일별 객체
        Map<Integer, Integer> monthTotalPrice = dashBoardService.extractMonthTotalPrice(orders);
        Map<Integer, Integer> dayTotalPrice = dashBoardService.extractDayTotalPrice(orders);
        model.addAttribute("monthTotalPrice", monthTotalPrice);
        model.addAttribute("dayTotalPrice", dayTotalPrice);

        return "admin/statistics";
    }
}
