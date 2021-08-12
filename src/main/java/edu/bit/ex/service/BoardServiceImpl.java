package edu.bit.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.BoardMapper;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.OrderDetailVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements BoardService {
	// 1:1문의 게시판 주문문의 관리자모드 리스트
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getList() {

		return boardMapper.getList();
	}

	// 1:1문의 게시판 주문문의 게시판 하나 읽기
	@Override
	public BoardVO get(int board_id) {
		log.info("service:get()..");
		return boardMapper.read(board_id);
	}

	// 1:1문의 게시판 주문문의 수정
	@Override
	public void modify(BoardVO boardVO) {
		log.info("service:modify()..");
		boardMapper.update(boardVO);
	}

	// 1:1문의 게시판 주문문의 삭제
	@Override
	public void remove(int board_id) {
		log.info("service:remove()..");
		boardMapper.delete(board_id);

	}

	// 관리자 주문문의글쓰기
	@Override
	public void writeBoard(BoardVO boardVO) {
		boardMapper.insertBoard(boardVO);
	}

	
	
	// 회원 마이페이지 게시글 부분
	// 1:1문의
	@Override
	public List<BoardVO> getMemberList(int member_idx) {

		return boardMapper.getMemberList(member_idx);
	}

	// 1:1문의 게시판 하나 읽기
	@Override
	public BoardVO get1(int board_id) {
		log.info("service:get()..");
		return boardMapper.read1(board_id);
	}

	// 1:1문의글쓰기
	@Override
	public void writeBoard1(BoardVO boardVO) {
		boardMapper.insertBoard1(boardVO);
	}

	// 1:1문의 수정
	@Override
	public void my_modify(BoardVO boardVO) {
		log.info("service:my_modify()..");
		boardMapper.my_update(boardVO);
	}

	// 1:1문의 삭제
	@Override
	public void my_remove(int board_id) {
		log.info("service:my_remove()..");
		boardMapper.my_delete(board_id);

	}

	// 후기리스트
	@Override
	public List<BoardVO> getReviewList(int member_idx) {
		return boardMapper.getReviewList(member_idx);
	}

	// 후기글쓰기
	@Override
	public void writeBoard2(BoardVO boardVO) {
		boardMapper.insertBoard2(boardVO);

	}

	// 후기 상세보기
	@Override
	public BoardVO get2(int board_id) {
		log.info("service:get()..");
		return boardMapper.read2(board_id);
	}

	// 후기 회원 수정
	@Override
	public void review_modify(BoardVO boardVO) {
		log.info("service:review_modify()..");
		boardMapper.review_update(boardVO);

	}

	// 회원 후기 삭제
	@Override
	public void review_remove(int board_id) {
		log.info("service:review_remove()..");
		boardMapper.review_delete(board_id);
	}

	
	
	
	// 회원구매내역
	@Override
	public List<OrderVO> getOrderList(int member_idx) {
		return boardMapper.getOrderList(member_idx);
	}

	// 구매 상세 보기
	@Override
	public List<OrderDetailVO> getOrder(int order_id) {
		log.info("service:get()..");
		return boardMapper.orderRead(order_id);
	}
	


	
	//구독리스트
	// 구매 상세 보기
		@Override
		public List<OrderDetailVO> getPressList(int order_id) {
			log.info("service:get()..");
			return boardMapper.getPressList(order_id);
		}
}
	
	

