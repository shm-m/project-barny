package edu.bit.ex.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.bit.ex.service.BoardService;
import edu.bit.ex.service.ProductMainService;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 마이페이지
	@GetMapping("/board/my_page")
	public String my_page(Principal principal) {
		
		log.info("User name=======" + principal.getName());
		
		return "/board/my_page";
	}

	// 마이페이지 (구매내역)리스트
	@GetMapping("/board/purchase_list")
	public String purchase_list(Model model, Principal principal, @AuthenticationPrincipal MemberContext ctx) {


		log.info("purchase_list Principal.." + principal.getName());
		log.info("purchase_list..: Principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("Principal" + ctx.getMemberVO().getMember_idx());
		
		List<OrderVO> orderList = boardService.getOrderList(ctx.getMemberVO().getMember_idx());

		model.addAttribute("purchase_list", orderList);
		
		log.info("List<orderVO> orderList"+orderList);

		return "/board/purchase_list";
	}



	// 마이페이지 (1:1문의내역)리스트
	@GetMapping("/board/my_view")
	public String my_view(Model model, Principal principal, @AuthenticationPrincipal MemberContext ctx) {


		log.info("my_view() Principal.." + principal.getName());
		log.info("my_view()..: Principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("Principal" + ctx.getMemberVO().getMember_idx());
		
		List<BoardVO> boardList = boardService.getMemberList(ctx.getMemberVO().getMember_idx());

		model.addAttribute("my_view", boardList);
		
		log.info("List<boardVO> boardList"+boardList);

		return "/board/my_view";
	}

	

	// 1:1문의상세보기
	@GetMapping("/board/my_content_view")
	public String my_content_view(BoardVO boardVO, Model model) {
		log.info("my_content_view()..");
		log.info("my_content_view()..boardVO" + boardVO);

		model.addAttribute("my_content_view", boardService.get(boardVO.getBoard_id()));

		log.info("my_content_view boardVO_Get " + boardService.get(boardVO.getBoard_id()));

		return "/board/my_content_view";
	}

	// 회원 마이페이지 1:1문의 글쓰기 입력폼
	@GetMapping("/board/my_view_write")
	public String my_view_write() {
		log.info("my_view_write");

		return "/board/my_view_write";
	}

	// 회원 마이페이지 1:1문의 글작성 후 입력누르면 넘어가는 입력버튼
	@PostMapping("/board/write_my_view")
	public String write_my_view(BoardVO boardVO,@AuthenticationPrincipal MemberContext ctx) {
		log.info("write_my_view()");

		boardVO.setMember_idx(ctx.getMemberVO().getMember_idx());
		//boardVO.setBoard_type_id();
		
		log.info("boardVO :" + boardVO);
		
		
		boardService.writeBoard1(boardVO);

		return "redirect:/board/my_view";
		
	}

	// 회원 1:1문의 주문내역 게시판 수정
	@PostMapping("/board/my_modify")
	public String my_modify(BoardVO boardVO, Model model) {
		log.info("my_modify()..");

		boardService.my_modify(boardVO);

		return "redirect:/board/my_view";
	}

	// 회원 1:1문의 주문내역 게시판 삭제
	@GetMapping("/board/my_delete")
	public String my_delete(BoardVO boardVO, Model model) {
		log.info("my_delete()..");

		boardService.my_remove(boardVO.getBoard_id());

		return "redirect:/board/my_view";
	}

	// 마이페이지 (후기)리스트
	@GetMapping("/board/my_review")
	public String my_review(Model model, Principal principal, @AuthenticationPrincipal MemberContext ctx) {
		
		log.info("my_review() Principal.." + principal.getName());
		
		log.info("my_review()..: Principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("Principal" + ctx.getMemberVO().getMember_idx());
		
		List<BoardVO> reviewList = boardService.getReviewList(ctx.getMemberVO().getMember_idx());

		model.addAttribute("my_review", reviewList);
		
		log.info("List<boardVO> reviewList" + reviewList);


		return "/board/my_review";
	}

	// 회원후기상세보기
	@GetMapping("/board/review_content_view")
	public String review_content_view(BoardVO boardVO, Model model) {
		log.info("review_content_view()..");

		model.addAttribute("review_content_view", boardService.get(boardVO.getBoard_id()));
		return "/board/review_content_view";
	}

	// 회원 마이페이지 후기 글쓰기 입력폼
	@GetMapping("/board/my_review_write")
	public String my_review_write() {
		log.info("my_review_write");

		return "/board/my_review_write";
	}

	// 회원 마이페이지 후기 글작성 후 입력누르면 넘어가는 입력버튼
	@PostMapping("/board/write_my_review")
	public String write_my_review(BoardVO boardVO,@AuthenticationPrincipal MemberContext ctx) {
		log.info("write_my_review()");

		boardVO.setMember_idx(ctx.getMemberVO().getMember_idx());
		
		log.info("boardVO :" + boardVO);
		
		
		boardService.writeBoard2(boardVO);

		return "redirect:/board/my_review";
	}

	// 회원 후기 수정
	@PostMapping("/board/review_modify")
	public String review_modify(BoardVO boardVO, Model model) {
		log.info("review_modify()..");

		boardService.review_modify(boardVO);

		return "redirect:/board/my_review";
	}

	// 회원 후기 게시판 삭제
	@GetMapping("/board/review_delete")
	public String review_delete(BoardVO boardVO, Model model) {
		log.info("review_delete()..");

		boardService.review_remove(boardVO.getBoard_id());

		return "redirect:/board/my_review";
	}

	// 관리자 주문내역 리스트
	@GetMapping("/board/list")
	public String list(Model model) {

		log.info("list()..");
		model.addAttribute("list", boardService.getList());

		return "/board/list";
	}

	// 관리자주문내역읽기
	@GetMapping("/board/content_view")
	public String content_view(BoardVO boardVO, Model model) {
		log.info("content_view()..");

		model.addAttribute("content_view", boardService.get(boardVO.getBoard_id()));
		return "/board/content_view";
	}

	// 관리자 주문내역 게시판 수정
	@PostMapping("/board/modify")
	public String modify(BoardVO boardVO, Model model) {
		log.info("modify()..");

		boardService.modify(boardVO);

		return "redirect:/board/list";
	}

	// 관리자 주문내역 게시판 삭제
	@GetMapping("/board/delete")
	public String delete(BoardVO boardVO, Model model) {
		log.info("delete()..");

		boardService.remove(boardVO.getBoard_id());

		return "redirect:/board/list";
	}

	// 관리자 주문내역 게시판 글쓰기폼
	@GetMapping("/board/write_view")
	public String write_view() {
		log.info("write_view");

		return "/board/write_view";
	}

	// 관리자 주문내역 게시판 글쓰기 입력버튼 누르는거
	@PostMapping("/board/write")
	public String write(BoardVO boardVO) {
		log.info("write()");

		boardService.writeBoard(boardVO);

		return "redirect:/board/list";
	}

}
