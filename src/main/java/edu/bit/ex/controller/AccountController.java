package edu.bit.ex.controller;

import edu.bit.ex.mapper.MemberMapper;
import edu.bit.ex.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
public class AccountController {


    private final MemberMapper memberMapper;
    private final PasswordEncoder passwordEncoder;


    /*@GetMapping({"","/"})
    public @ResponseBody String index(){
        return"index";
    }*/

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


    @PostMapping("/join")
    public String join(@ModelAttribute MemberVO memberVO) {
        String rawPassword = memberVO.getPw();
        String encodedPassword = passwordEncoder.encode(rawPassword);
        memberVO.setPw(encodedPassword);
        memberMapper.insertUser(memberVO);
        return "redirect:/loginForm";
    }


}
