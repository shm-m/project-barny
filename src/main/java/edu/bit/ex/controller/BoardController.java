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

	@GetMapping("/board/list")
	public String list(Model model) {

		log.info("list()..");
		model.addAttribute("list", boardService.getList());

		return "list";
	}
	//마이페이지 (1:1문의내역)
	@GetMapping("/board/my_view")
	public String my_view(BoardVO boardVO, Model model) {

		boardVO.setMember_idx(42);
		
		log.info("my_view()..");
		log.info("my_view()..: boardVO" + boardVO);
		
		
		model.addAttribute("my_view", boardService.getMemberList(boardVO));

		return "my_view";
	}
	
		//마이페이지 (후기)
		@GetMapping("/board/my_review")
		public String my_review(BoardVO boardVO, Model model) {

			boardVO.setMember_idx(42);
			
			log.info("my_review()..");
			log.info("my_review()..: boardVO" + boardVO);
			
			
			model.addAttribute("my_review", boardService.getReviewList(boardVO));

			return "my_review";
		}
	

	@GetMapping("/board/content_view")
	public String content_view(BoardVO boardVO, Model model) {
		log.info("content_view()..");

		model.addAttribute("content_view", boardService.get(boardVO.getBoard_id()));
		return "content_view";
	}

	@PostMapping("/board/modify")
	public String modify(BoardVO boardVO, Model model) {
		log.info("modify()..");

		boardService.modify(boardVO);

		return "redirect:list";
	}

	@GetMapping("/board/delete")
	public String delete(BoardVO boardVO, Model model) {
		log.info("delete()..");

		boardService.remove(boardVO.getBoard_id());

		return "redirect:list";
	}
	
	@GetMapping("/board/write_view")
	public String write_view() {
		log.info("write_view");

		return "write_view";
	}

	@PostMapping("/board/write")
	public String write(BoardVO boardVO) {
		log.info("write()");
		
		boardService.writeBoard(boardVO);

		return "redirect:list";
	}

}
