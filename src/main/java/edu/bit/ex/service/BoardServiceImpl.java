package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.bit.ex.mapper.BoardMapper;
import edu.bit.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements BoardService {
	//1:1문의 게시판 주문문의 관리자모드 리스트
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getList() {

		return boardMapper.getList();
	}
	//1:1문의 게시판 주문문의 게시판 하나 읽기
	@Override
	public BoardVO get(int board_id) {
		log.info("service:get()..");
		return boardMapper.read(board_id);
	}
	//1:1문의 게시판 주문문의 수정
	@Override
	public void modify(BoardVO boardVO) {
		log.info("service:modify()..");
		boardMapper.update(boardVO);
	}
	//1:1문의 게시판 주문문의 삭제
	@Override
	public void remove(int board_id) {
		log.info("service:remove()..");
		boardMapper.delete(board_id);
		
	}
	@Override
	public void writeBoard(BoardVO boardVO) {
		boardMapper.insertBoard(boardVO);
	}
	
	@Override
	public List<BoardVO> getMemberList(BoardVO boardVO) {
		
		return  boardMapper.getMemberList(boardVO);
	}
	@Override
	public List<BoardVO> getReviewList(BoardVO boardVO) {
		return  boardMapper.getReviewList(boardVO);
	}

}
