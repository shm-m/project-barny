package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {

    @GetMapping("/board/story")
    public String story() { // jvm이 가장 먼저 실행함
        return "brandstory";
    }

}
