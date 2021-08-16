package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import edu.bit.ex.vo.account.MemberContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import lombok.extern.slf4j.Slf4j;
import edu.bit.ex.service.EventService;
import edu.bit.ex.vo.MemberVO;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
//@RequestMapping("/event/**")
public class EventController {

    @Autowired
    private EventService eventService;

    // 룰렛 메인 페이지
    @GetMapping("/roulette")
    public Object roulette_game(ModelAndView mav, @AuthenticationPrincipal MemberContext ctx) {
        mav.setViewName("event/roulette_game");
        if (ctx == null) {
            return "/loginForm";
        }
        mav.addObject("participate_date", eventService.checkPart(ctx.getMemberVO().getMember_idx()));
        return mav;

    }

    // 포인트 적립
    @RequestMapping(value = "/add_point", method = RequestMethod.POST)
    public String add_point(MemberVO memberVO) {
        log.info("event roulette start");
        eventService.updatePoint(memberVO);
        eventService.participate(memberVO.getMember_idx());
        return "redirect:/event/roulette";
    }

    // 카드게임 메인 페이지
    @GetMapping("/user/event_cardbarny")
    public String cardbarny() {
        return "/user/cardBarny";
    }

}


