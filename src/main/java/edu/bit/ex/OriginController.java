package edu.bit.ex;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OriginController {

    @GetMapping("/")
    public String Hello() { // jvm이 가장 먼저 실행함
        return "Hello , World";
    }

    // 제일 처음 부트스트랩 돌아갈때 뜨는 화면입니다 나중에 메인 만들어지면 삭제해주세용

}
