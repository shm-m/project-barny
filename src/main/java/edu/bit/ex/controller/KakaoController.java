package edu.bit.ex.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.KakaoProfile;
import edu.bit.ex.vo.account.OAuthToken;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.util.UUID;
@Controller
public class KakaoController {

    private MemberService memberService;

    @GetMapping("/auth/kakao/callback")
    public @ResponseBody
    String kakaoCallback(String code) {//Data 를 리턴해주는 컨트롤러 함수.

        //post방식으로 ket=value 데이터를 요청 (카카오쪽으로)
        RestTemplate rt = new RestTemplate();
        //==httpheader를 만들어야함 -> 컨텐츠 타입을 담아야함. ->내가 지금 전송한 바디 가 키 데이터라는 것을 알려줌.
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        //HttpBody 오브젝트 생성 -> 키 밸류 붙여 넣어야함==//
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("grant_type", "authorization_code");
        params.add("client_id", "6cbc45879bd3c8e98d47a03bf45de7e1");
        params.add("redirect_uri", "http://localhost:8282/auth/kakao/callback");
        params.add("code", code); //

        //HttpHeader 와 HttpBody 를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
                new HttpEntity<>(params, headers);

        ResponseEntity<String> response = rt.exchange(
                "https://kauth.kakao.com/oauth/token",
                HttpMethod.POST,
                kakaoTokenRequest,
                String.class
        );


        //Gson,Json Simple, ObjectMapper
        ObjectMapper objectMapper = new ObjectMapper();
        OAuthToken oauthToken = null;
        try {
            oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        System.out.println("카카오 액세스 토큰 :" + oauthToken.getAccess_token());

        //============

        RestTemplate rt2 = new RestTemplate();

        HttpHeaders headers2 = new HttpHeaders();
        headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
        headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 =
                new HttpEntity<>(headers2);

        ResponseEntity<String> response2 = rt2.exchange(
                "https://kapi.kakao.com/v2/user/me",
                HttpMethod.POST,
                kakaoProfileRequest2,
                String.class
        );

        ObjectMapper objectMapper2 = new ObjectMapper();
        KakaoProfile kakaoProfile = null;
        try {
            kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        System.out.println("카카오 아이디(번호):" + kakaoProfile.getId());
        System.out.println("카카오 이메일:" + kakaoProfile.getKakao_account().getEmail());
        System.out.println("바니사이트 카카오 유저네임:" + kakaoProfile.getKakao_account().getEmail() + "_" + kakaoProfile.getId());
        System.out.println("바니사이트 카카오 이메일:" + kakaoProfile.getKakao_account().getEmail());
        UUID garbagePassword = UUID.randomUUID();
        System.out.println("바니사이트 카카오 패스워드:" + garbagePassword);


        MemberVO memberVO = MemberVO.builder()
                .member_id(kakaoProfile.getKakao_account().getEmail() + "_" + kakaoProfile.getId())
                .pw(garbagePassword.toString())
                .email((kakaoProfile.getKakao_account().getEmail()))
                .build();


        //가입자 혹은 비가입자 체크 해서 처리

       /*MemberVO originUser = memberService.getMember();

        if(originUser==null){
            //카카오 회원가입

        }*/

        memberService.addUser(memberVO);

        return "user";

    }


}
