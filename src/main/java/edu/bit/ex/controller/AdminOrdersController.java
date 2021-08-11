package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bit.ex.service.AdminOrdersService;
import edu.bit.ex.vo.AdminOrdersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminOrdersController {
   @Autowired 
   private AdminOrdersService adminOrdersService;

   @GetMapping("/admin/admin_orders")
   public String admin_orders(Model model){ 
   log.info("admin_orders()...");
   model.addAttribute("admin_orders",adminOrdersService.getList());
   return "admin/admin_orders";
   }

   @GetMapping("admin/content_view_orders")
   public String content_view_orders(AdminOrdersVO adminOrdersVO, Model model){
    log.info("content_view_orders()..");
    model.addAttribute("content_view_orders", adminOrdersService.get(adminOrdersVO.getMember_idx()));
    return "admin/content_view_orders";
  
 }

   @PostMapping("admin/ordersModify")
   public String ordersModify(AdminOrdersVO adminOrdersVO){
   log.info("modify()...");
   System.out.println(adminOrdersVO);
   adminOrdersService.ordersModify(adminOrdersVO);
   return "redirect:admin_orders";
  }
}
