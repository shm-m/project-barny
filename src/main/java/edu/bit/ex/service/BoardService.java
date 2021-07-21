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
	
	//1:1 회원 글쓰기
	public void writeBoard1(BoardVO boardVO);
	//1:1회원 글수정
	public void my_modify(BoardVO boardVO);
	//1:1회원 글 삭제
	public void my_remove(int board_id);
	
	//후기 회원 글쓰기
	public void writeBoard2(BoardVO boardVO);


	

}
