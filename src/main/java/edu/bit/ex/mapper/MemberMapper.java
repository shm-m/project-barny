package edu.bit.ex.mapper;

import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.AuthVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;


@Mapper
public interface MemberMapper {
    //select*from user where username =1? <-(파라미터에 String username ) 이 들어오는거임
    public MemberVO getMember(String member_id);

    public int insertUser(MemberVO memberVO);

    @Insert("insert into AUTH (ROLE, MEMBER_IDX ,ACTIVE) values('ROLE_USER', #{member_idx}, 1)")
    public void insertAuthorities(MemberVO memberVO);

    @Select("select m.member_idx from Member m where m.member_id =#{member_id}")
    public int getMemberIdx(MemberVO memberVO);

    public int checkOverId(String member_id);

    @Select("select * from AUTH where member_idx = #{member_idx}")
    List<AuthVO> getAuthList(MemberVO memberVO);

    int checkEmail(String email);

    int checkNickname(String nickname);

    public MemberVO findId(String email);

    int changePw(String pw,String member_id,String email);

    
    //수정
	public int updateUser(MemberVO memberVO);
	//탈퇴
	public void deleteUser(MemberVO memberVO);


//	public int deleteUser(MemberVO memberVO);


}