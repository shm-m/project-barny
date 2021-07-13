package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/story")
    public String story() { // jvm이 가장 먼저 실행함
        return "brandstory";
    }

}
