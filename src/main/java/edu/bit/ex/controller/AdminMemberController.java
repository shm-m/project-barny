package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.bit.ex.service.AdminMemberService;
import edu.bit.ex.vo.AdminMemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminMemberController {

   @Autowired
    private AdminMemberService adminMemberService;
    
    @GetMapping("/admin/admin_member")
    public String admin_member(Model model) { // jvm이 가장 먼저 실행함
        log.info("admin_member()...");
        model.addAttribute("admin_member",adminMemberService.getList());
        return "admin/admin_member";
    }
    
    @PostMapping("admin/write")
    public String write(AdminMemberVO adminMemberVO) {
        log.info("write()..");
        
        adminMemberService.writeMember(adminMemberVO);
        
        return "redirect:admin/admin_member";
    }
    
    @GetMapping("admin/write_view")
    public String write_view() {
        log.info("write_view()..");
        return "admin/write_view";

   
      //@GetMapping("admin/content_view") 
      //public String content_view(AdminMemberVO adminMemberVO ,Model model) { 
      //log.info("content_view()..");
      //adminMemberService.upHit(adminMemberVO.getMember_idx());
      //model.addAttribute("content_view",adminMemberService.get(adminMemberVO.getMember_idx())); 
      //return "admin/content_view"; 
      
      }
     
}

