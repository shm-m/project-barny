package edu.bit.ex.controller;

import com.google.gson.Gson;

import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;

@Slf4j
@RestController
public class EmailController {

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private MemberService memberService;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @RequestMapping("/CheckMail")
    //@ResponseBody
    public String SendMail(String email, HttpSession session) {
        Random random = new Random();
        Gson gson = new Gson();
        String key = "";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
        // 입력 키를 위한 코드
        for (int i = 0; i < 3; i++) {
            int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
            key += (char) index;
        }
        int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
        key += numIndex;
        message.setSubject("환영합니다! BARNY 가입 인증번호 입력을 위한 메일 전송");
        message.setText(
                "안녕하세요 BARNY 가입한 아이디 안내 관련 이메일 입니다.\n" + "인증번호 [ " + key + " ] 를 입력해주세요");
        javaMailSender.send(message);


        return gson.toJson(key);

    }


    @RequestMapping("/FindId")
    //@ResponseBody
    public String SendFindId(String email, HttpSession session, MemberVO memberVO) {

        Gson gson = new Gson();
        String member_id = "";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소

        memberService.findId(email);
        log.info("findEmail - " + memberService.findId(email).getMember_id());

        member_id = memberService.findId(email).getMember_id();
        message.setSubject(memberService.findId(email).getMember_name() + "님의 BARNY 🐰 가입 아이디 안내 ");
        message.setText(
                "안녕하세요 BARNY 가입한 아이디 안내 관련 이메일 입니다.\n" +
                        memberService.findId(email).getMember_name() + " 님의 가입 아이디는 [ " + memberService.findId(email).getMember_id() + " ] 입니다.");
        javaMailSender.send(message);

        return gson.toJson(member_id);

    }


    @RequestMapping("/FindPw")
    //@ResponseBody
    public String SendFindPw(String member_id, String email, HttpServletRequest request) {
        Random random = new Random();

        Gson gson = new Gson();
        String key = "";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
        // 입력 키를 위한 코드
        for (int i = 0; i < 3; i++) {
            int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
            key += (char) index;
        }
        int numIndex = random.nextInt(8999) + 100000; // 4자리 정수를 생성
        key += numIndex;

        message.setSubject(memberService.findId(email).getMember_name() + "님의 BARNY 임시 비밀번호 안내 ");
        message.setText(
                "안녕하세요 BARNY 임시비밀번호 안내 관련 이메일 입니다.\n" +
                        memberService.findId(email).getMember_name() + " 님의 임시 비밀번호는 [ " + key + " ] 입니다.");
        javaMailSender.send(message);

        key = passwordEncoder.encode(key);

        System.out.println(key);
        member_id = memberService.findId(email).getMember_id();
        memberService.changePw(key, member_id, email);

        return gson.toJson(key);

    }



}
