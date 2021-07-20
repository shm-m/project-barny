package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.BoardVO;

@Mapper
public interface BoardMapper {

	public List<BoardVO> getList();
	public BoardVO read(int board_id);
	public void update(BoardVO boardVO);
	public void delete(int board_id);
	public void insertBoard(BoardVO boardVO);
	
	public List<BoardVO> getMemberList(BoardVO boardVO);
	public List<BoardVO> getReviewList(BoardVO boardVO);
}
