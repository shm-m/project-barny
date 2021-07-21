package edu.bit.ex.service;

import java.util.List;


import edu.bit.ex.vo.BoardVO;


public interface BoardService {
	
	public List <BoardVO> getList();
	
	public BoardVO get(int board_id);
	public void modify(BoardVO boardVO);
	public void remove(int board_id);
	public void writeBoard(BoardVO boardVO);
	
	//1:1게시판 회원 마이페이지
	public List<BoardVO> getMemberList(BoardVO boardVO);
	//후기게시판 회원 마이페이지
	public List<BoardVO> getReviewList(BoardVO boardVO);
}
