package edu.bit.ex;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OriginController {

    @GetMapping("/")
    public String Hello() { // jvm이 가장 먼저 실행함
        return "Hello , World";
    }

}
