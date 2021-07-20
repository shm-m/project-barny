package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

	@GetMapping("/board/story")
	public String story() {
		return "brandstory";
	}

	@GetMapping("/board/mypage")
	public String mypage() {
		return "navi";
	}
}
