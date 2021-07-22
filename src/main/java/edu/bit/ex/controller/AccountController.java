package edu.bit.ex.controller;


import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;



@Controller
@RequiredArgsConstructor
public class AccountController {

    private final MemberService memberService;

    @GetMapping("/user")
    public @ResponseBody
    String user() {
        return "user";
    }

    @GetMapping("/admin")
    public @ResponseBody
    String admin() {
        return "admin";
    }

    @GetMapping("/loginForm")
    public String login() {
        return "account/loginForm";
    }

    @GetMapping("/joinForm")
    public String joinForm() {
        return "account/joinForm";
    }

    @ResponseBody
    @PostMapping("/join")
    public int join(@ModelAttribute MemberVO memberVO) {

        //== 아이디 중복검사 ==//
        MemberVO vo = memberService.idCheck(memberVO.getMember_id());
        if (vo == null) {
            // == 회원가입 ==//
            memberService.addUser(memberVO);
        } else {
            return 1;
        }
        return 0;

    }

    //TODO: VALIDATE CONTROLLER 생성





}
