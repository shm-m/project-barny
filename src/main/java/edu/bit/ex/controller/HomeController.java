package edu.bit.ex.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.page.PageVO;
import edu.bit.ex.service.EventService;
import edu.bit.ex.service.NoticeService;
import edu.bit.ex.service.ProductMainService;
import edu.bit.ex.vo.NoticeVO;
import edu.bit.ex.vo.ProductMainVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	// 상품보기
	@Autowired
	private ProductMainService productMainService;

	// event service
	@Autowired
	private EventService eventService;

	// notice sercie
	@Autowired
	private NoticeService noticeService;

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
	public String story() {
		return "brandstory";
	}

	// 구독
	@GetMapping("/subscribe")
	public String subscribe() {
		return "subs";
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
		model.addAttribute("list", productMainService.getListReview(productMainVO.getProduct_id()));

		return "product/product_view";
	}

	// update hit
	@PutMapping("/product_view?product_id={product_id}")
	public ResponseEntity<String> updateHit(@RequestBody ProductMainVO productMainVO, ModelAndView mav) {

		ResponseEntity<String> entity = null;

		try {

			productMainService.updateHit(productMainVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	// 후기 write
	@PostMapping("/review/write")
	public String writeReview(ProductMainVO productMainVO) {

		productMainService.writeReview(productMainVO);

		return "redirect:/product_main"; // 다이렉트로 특정 상품 리스트로 가게
	}

	@GetMapping("/user/review/write_view/**")
	public String write_view(Model model, ProductMainVO productMainVO, Principal principal,
			@AuthenticationPrincipal MemberContext ctx) {

		log.info("Principal" + principal.getName());
		log.info("Principal" + ctx.getMemberVO().getMember_idx());

		log.info("write_view()..");
		model.addAttribute("member_idx", ctx.getMemberVO().getMember_idx()); // 회원 번호를 jsp에 쓸때
		model.addAttribute("product_view", productMainService.get(productMainVO.getProduct_id()));
		return "user/write_view";
	}

	// event list
	@GetMapping("/event")
	public String event_main(Model model, Criteria cri) {

		model.addAttribute("event_list", eventService.getList(cri));

		int total = eventService.getTotal(cri);
		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "event/m_event_list";
	}

	// notice list
	@GetMapping("/notice")
	public String notice(Model model, Criteria cri) {

		model.addAttribute("list", noticeService.getList(cri));

		int total = noticeService.getTotal(cri);
		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "notice/m_main";
	}

	// notice list view
	@GetMapping("/notice/content/{board_id}") // 뒤에 보드 아이디 달아줘야 찾아감!
	public String notice_content_view(NoticeVO noticeVO, Model model) {

		model.addAttribute("content_view", noticeService.get(noticeVO.getBoard_id()));

		return "notice/m_content_view";
	}

	// FAQ
	@GetMapping("/notice/faq")
	public String faq(Model model) {
		return "notice/faq";
	}

}
