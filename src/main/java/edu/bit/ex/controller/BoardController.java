package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.bit.ex.service.BoardService;
import edu.bit.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 마이페이지 (1:1문의내역)
	@GetMapping("/board/my_view")
	public String my_view(BoardVO boardVO, Model model) {

		boardVO.setMember_idx(42);

		log.info("my_view()..");
		log.info("my_view()..: boardVO" + boardVO);

		model.addAttribute("my_view", boardService.getMemberList(boardVO));

		return "my_view";
	}

	// 마이페이지 (후기)
	@GetMapping("/board/my_review")
	public String my_review(BoardVO boardVO, Model model) {

		boardVO.setMember_idx(42);

		log.info("my_review()..");
		log.info("my_review()..: boardVO" + boardVO);

		model.addAttribute("my_review", boardService.getReviewList(boardVO));

		return "my_review";
	}

	// 회원 마이페이지 1:1문의 글쓰기 입력폼
	@GetMapping("/board/my_view_write")
	public String my_view_write() {
		log.info("my_view_write");

		return "my_view_write";
	}

	// 회원 마이페이지 후기 글쓰기 입력폼
	@GetMapping("/board/my_review_write")
	public String my_review_write() {
		log.info("my_review_write");

		return "my_review_write";
	}

	// 회원 마이페이지 1:1문의 글작성 후 입력누르면 넘어가는 입력버튼
	@PostMapping("/board/write_my_view")
	public String write_my_view(BoardVO boardVO) {
		log.info("write_my_view()");

		boardService.writeBoard(boardVO);

		return "redirect:my_view";
	}

	// 회원 마이페이지 후기 글작성 후 입력누르면 넘어가는 입력버튼
	@PostMapping("/board/write_my_review")
	public String write_my_review(BoardVO boardVO) {
		log.info("write_my_review()");

		boardService.writeBoard(boardVO);

		return "redirect:my_review";
	}

	// 관리자 주문내역 리스트
	@GetMapping("/board/list")
	public String list(Model model) {

		log.info("list()..");
		model.addAttribute("list", boardService.getList());

		return "list";
	}

	// 관리자주문내역읽기
	@GetMapping("/board/content_view")
	public String content_view(BoardVO boardVO, Model model) {
		log.info("content_view()..");

		model.addAttribute("content_view", boardService.get(boardVO.getBoard_id()));
		return "content_view";
	}

	// 관리자 주문내역 게시판 수정
	@PostMapping("/board/modify")
	public String modify(BoardVO boardVO, Model model) {
		log.info("modify()..");

		boardService.modify(boardVO);

		return "redirect:list";
	}

	// 관리자 주문내역 게시판 삭제
	@GetMapping("/board/delete")
	public String delete(BoardVO boardVO, Model model) {
		log.info("delete()..");

		boardService.remove(boardVO.getBoard_id());

		return "redirect:list";
	}

	// 관리자 주문내역 게시판 글쓰기폼
	@GetMapping("/board/write_view")
	public String write_view() {
		log.info("write_view");

		return "write_view";
	}

	// 관리자 주문내역 게시판 글쓰기 입력버튼 누르는거
	@PostMapping("/board/write")
	public String write(BoardVO boardVO) {
		log.info("write()");

		boardService.writeBoard(boardVO);

		return "redirect:list";
	}

}
