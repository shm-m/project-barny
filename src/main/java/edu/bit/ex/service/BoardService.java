package edu.bit.ex.service;

import java.util.List;


import edu.bit.ex.vo.BoardVO;


public interface BoardService {
	
	public List <BoardVO> getList();
	
	public BoardVO get(int board_id);
	public void modify(BoardVO boardVO);
	public void remove(int board_id);
	public void writeBoard(BoardVO boardVO);
	
	public List<BoardVO> getMemberList(BoardVO boardVO);

	public List<BoardVO> getReviewList(BoardVO boardVO);
}
