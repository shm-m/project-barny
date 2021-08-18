package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@AutoConfigureMockMvc
@SpringBootTest
class BoardControllerTest {
	@Autowired
	private MockMvc mvc;

	// 마이 페이지 접근
	@Test
	@WithUserDetails("test1")
	void contextLoads() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/board/my_page").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());

	}

	// 마이페이지 구독
	@Test
	@WithUserDetails("test1")
	public void admin_notice() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/press").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 리스트
	@Test
	@WithUserDetails("test1")
	public void purchase_list() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/purchase_list").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void purchase_viewList() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/my_view").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void my_content_view() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/my_content_view").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void reply_view() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/reply_view").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void reply_content_view() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/reply_content_view").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}


	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void my_review() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/my_review").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void review_content_view() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/review_content_view").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	// 마이 페이지 구매내역 1:1 리스트
	@Test
	@WithUserDetails("test1")
	public void my_review_write() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/board/my_review_write").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	

}
