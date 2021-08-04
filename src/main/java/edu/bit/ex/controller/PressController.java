package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import edu.bit.ex.service.BoardService;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;
import lombok.experimental.ExtensionMethod;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PressController {
	
	@Autowired
	private BoardService boardService;


	// 마이페이지 (구독)
	@RequestMapping("/board/press")
	public String press(OrderVO orderVO, Model model) {

		orderVO.setMember_idx(44);

		log.info("purchase_list");
		log.info("purchase_list()..: orderVO" + orderVO);

		model.addAttribute("purchase_list", boardService.getOrderList(orderVO));

		return "/board/purchase_list";
	}

	

}