package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bit.ex.service.ProductMainService;
import edu.bit.ex.vo.ProductMainVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	// 상품보기
	@Autowired
	private ProductMainService productMainService;

	// 메인 페이지
	@GetMapping("/main")
	public String main_page() {
		return "main_page";
	}

	// 헤더 테스트, 모두 확인 시 삭제
	@GetMapping("/test")
	public String test() {
		return "header_test";
	}

	// 취향 테스트
	@GetMapping("/drink_test")
	public String drink_test() {
		return "drink_test";
	}

	// 브랜드 스토리
	@GetMapping("/story")
	public String story() { // jvm이 가장 먼저 실행함
		return "brandstory";
	}

	// 상품보기
	@GetMapping("/product_main")
	public String product_main(Model model) {

		log.info("product_main()..");
		model.addAttribute("product_main", productMainService.getList());

		return "product/product_main";
	}
	
	// 상품 - 술
	@GetMapping("/product_main_liquor")
	public String product_main_liquor(Model model) {

		log.info("product_main_liquor()..");
		model.addAttribute("product_main_liquor", productMainService.getList1());

		return "product/product_main_liquor";
	}
	
	// 상품 - 안주
	@GetMapping("/product_main_food")
	public String product_main_food(Model model) {

		log.info("product_main_food()..");
		model.addAttribute("product_main_food", productMainService.getList2());

		return "product/product_main_food";
	}
	
	// 상품상세보기
	@GetMapping("/product_view")
	public String product_view(ProductMainVO productMainVO, Model model) {

		log.info("product_view()..");
		model.addAttribute("product_view", productMainService.get(productMainVO.getProduct_id()));

		return "product/product_view";
	}

}
