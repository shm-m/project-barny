package edu.bit.ex.controller;

import edu.bit.ex.service.DashBoardService;
import edu.bit.ex.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class DashBoardController {

    @Autowired
    private DashBoardService dashBoardService;

    @GetMapping("/statistics")
    public String statistics(Model model) {

        List<OrderVO> orders = dashBoardService.getOrders();

        Map<Integer, Integer> monthTotalPrice = dashBoardService.extractMonthTotalPrice(orders);
        Map<Integer, Integer> dayTotalPrice = dashBoardService.extractDayTotalPrice(orders);

        model.addAttribute("monthTotalPrice",monthTotalPrice);
        model.addAttribute("dayTotalPrice",dayTotalPrice);

        System.out.println("DashBoardController.statistics");

        return "account/statistics";

    }


}
