/*package edu.bit.ex.oauth2;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;


/**
 * Handles requests for the application home page.
 */
/*
@Slf4j
@AllArgsConstructor
@Controller
public class LoginController {


    @Autowired
    private KakaoLoginService kakao;

    @RequestMapping("auth/kakao/callback")
    public String kakaoCallback(@RequestParam("code") String code, HttpSession session) {

        log.info("kakao login_카카오 인증 완료!");
        log.info("code: " + code);

        String access_Token = kakao.getAccessToken(code);
        log.info("access_token : " + access_Token);

        HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
        log.info("login Controller : " + userInfo);

        // 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
        if (userInfo.get("email") != null) {
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("access_Token", access_Token);
        }

        session.setAttribute("nickname", userInfo.get("nickname"));
        session.setAttribute("email", userInfo.get("email"));

        return "auth/kakao/callback";
    }

    // 카카오 로그아웃
//    @RequestMapping(value = "/kakaologout")
//    public String kakaologout(HttpSession session) {
//        kakao.kakaoLogout((String) session.getAttribute("access_Token"));
//        session.removeAttribute("access_Token");
//        session.removeAttribute("userId");
//        return "kakaologin";
//    }
}
*/
