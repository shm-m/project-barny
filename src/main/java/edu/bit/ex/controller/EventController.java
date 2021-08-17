package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {

	// 메인 페이지
	@GetMapping("/user/event_cardbarny")
	public String cardbarny() {
		return "/user/cardBarny";
	}

}
