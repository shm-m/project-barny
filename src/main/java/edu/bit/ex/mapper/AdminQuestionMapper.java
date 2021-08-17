package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.AdminQuestionVO;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.OrderDetailVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;

@Mapper
public interface AdminQuestionMapper {
	public List<AdminQuestionVO> getList();
	public AdminQuestionVO read(int board_id);
	public void insertQuestion(AdminQuestionVO adminQuestionVO);
	
	// //답글 관련
	void updateShape(AdminQuestionVO adminQuestionVO);
	void insertReply(AdminQuestionVO adminQuestionVO);
}
