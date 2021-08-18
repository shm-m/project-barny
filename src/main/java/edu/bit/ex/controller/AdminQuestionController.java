package edu.bit.ex.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.bit.ex.service.AdminQuestionService;
import edu.bit.ex.vo.AdminQuestionVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AdminQuestionController {
     @Autowired
     private AdminQuestionService adminQuestionService;
     
     //1:1 문의내역 리스트
     @GetMapping("/admin/admin_question")
     public String admin_question(Model model,Principal principal,@AuthenticationPrincipal MemberContext ctx){
        log.info("admin_question()..Principal."+principal.getName());
        log.info("admin_question().. Principal"+ ctx.getMemberVO().getMember_idx()); 
        log.info("Principal"+ctx.getMemberVO().getMember_idx());

        List<AdminQuestionVO> questionList = adminQuestionService.getList(ctx.getMemberVO().getMember_idx());

        model.addAttribute("admin_question",questionList);

        log.info("List<adminQuestionVO> questionList"+questionList);

        return "/admin/admin_question";
     }

     // 1:1문의 상세보기
     @GetMapping("/admin/content_view_question")
     public String content_view_question(AdminQuestionVO adminQuestionVO,Model model){
        log.info("content_view_question()..");
        log.info("content_view_question..adminQuestionVO"+adminQuestionVO);

        model.addAttribute("reply_view",adminQuestionService.get(adminQuestionVO.getBoard_id()));
        
        log.info("content_view_question adminQuestionVO_Get"+adminQuestionService.get(adminQuestionVO.getBoard_id()));

        return "/admin/content_view_question";
    }

     // 1:1문의 글쓰기 입력폼
     @GetMapping("/admin/write_view_question")
     public String write_view_question(){
         log.info("write_view_question()..");

        return "/admin/write_view_question";
     }
     
   //회원 마이페이지 1:1문의 글작성 후 등록 누르면 글 작성 되게 해줌
   @PostMapping("/admin/write_my_view")
   public String write_my_view(AdminQuestionVO adminQuestionVO,@AuthenticationPrincipal MemberContext ctx){
      log.info("write_my_view()");

      adminQuestionVO.setMember_idx(ctx.getMemberVO().getMember_idx());
 
      log.info("write_my_view"+adminQuestionVO);
       
      adminQuestionService.writeQuestion(adminQuestionVO);

      return "redirect:/admin/admin_question";

   }

   @PostMapping("/admin/reply")
   public String reply(AdminQuestionVO adminQuestionVO,@AuthenticationPrincipal MemberContext ctx){
          log.info("reply().." + ctx);

          adminQuestionVO.setMember_idx(ctx.getMemberVO().getMember_idx());

          adminQuestionService.writeReply(adminQuestionVO);

          return "redirect:/admin/admin_question";
   }

   @GetMapping("/admin/reply_view")
   public String reply_view(AdminQuestionVO adminQuestionVO,Model model){
      log.info("reply_view()..");
      log.info("adminQuestionVO.."  + adminQuestionVO);


      //model.addAttribute("reply_view",adminQuestionService.getReply(adminQuestionVO.getBoard_id()));
      log.info("after..."  + adminQuestionService.get(adminQuestionVO.getBoard_id()));
      model.addAttribute("reply_view",adminQuestionService.get(adminQuestionVO.getBoard_id()));





      return "/admin/reply_view";
   }

}


