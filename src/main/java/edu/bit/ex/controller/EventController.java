package edu.bit.ex.controller;

import edu.bit.ex.controller.validator.MemberValidator;
import edu.bit.ex.service.EventService;
import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.RequiredArgsConstructor;

import java.security.Principal;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.page.PageVO;
import edu.bit.ex.service.EventService;
import edu.bit.ex.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
@RestController
@RequestMapping("/event/**")
public class EventController {

    @Autowired
    private EventService eventService;

    // 메인 페이지
    @GetMapping("/roulette")
    public String roulette_game(Model model) {
        return "event/roulette_game";
    }

    // 포인트 적립
    @PutMapping ("/add_point")
    public ResponseEntity<String> event(@RequestBody MemberVO memberVO, Principal principal, @AuthenticationPrincipal MemberContext ctx,
                                        ModelAndView mav) {
        log.info("event roulette start");
        ResponseEntity<String> entity = null;
        eventService.updatePoint(ctx.getMemberVO());
    }

    @ResponseBody
    @GetMapping("/writeCart")
    public String writeCart(CartVO cartVO, Principal principal, @AuthenticationPrincipal MemberContext ctx) {

        log.info("writeCart() ..");

        log.info("principal" + principal.getName());
        log.info("principal" + ctx.getMemberVO().getMember_idx());

        log.info("cartVO().." + cartVO);

        cartVO.setMember_idx(ctx.getMemberVO().getMember_idx());

        cartService.writeCart(cartVO);

        return "SUCCESS";
    }


}