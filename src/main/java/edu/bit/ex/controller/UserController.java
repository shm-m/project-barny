package edu.bit.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class UserController {

	@GetMapping("/board/updateForm")
	public String updateForm() {
		return "brandstory";
	}

}
