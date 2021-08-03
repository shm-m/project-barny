package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;

@Mapper
public interface BoardMapper {
	//관리자
	public List<BoardVO> getList();
	public BoardVO read(int board_id);
	public void update(BoardVO boardVO);
	public void delete(int board_id);
	public void insertBoard(BoardVO boardVO);
	
	
	
	
	//회원마이페이지 게시글들
	public List<BoardVO> getMemberList(BoardVO boardVO);
	
	//회원1:1문의 게시글
	public void insertBoard1(BoardVO boardVO);
	//내 게시글 읽기
	public BoardVO read1(int board_id);
	//회원1:1문의게시글 수정
	public void my_update(BoardVO boardVO);
	//회원1:1문의글게시글 삭제
	public void my_delete(int board_id);
	
	
	// 회원 내후기 리스트
	public List<BoardVO> getReviewList(BoardVO boardVO);
	// 회원 후기게시글쓰기
	public void insertBoard2(BoardVO boardVO);
	// 내 후기 게시글 읽기
	public BoardVO read2(int board_id);
	// 회원 후기 수정
	public void review_update(BoardVO boardVO);
	// 회원 후기 삭제
	public void review_delete(int board_id);
	
	// 회원 구매내역
	public List<OrderVO> getOrderList(OrderVO orderVO);
	// 회원 구매내역 상세보기
	public ProductMainVO orderRead(int product_id);
	
}
