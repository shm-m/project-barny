package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@AutoConfigureMockMvc
@SpringBootTest
class NoticeControllerTest {
	@Autowired
	private MockMvc mvc;
	
	//관리자 공지사항 컨트롤러

	@Test
	@WithMockUser(username = "test1", password = "test1", roles = {"USER","ADMIN"})
	void contextLoads() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/admin/notice/main").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	//관리자 공지사항 통과 테스트
		@Test
		@WithMockUser(username = "test1", password = "test1", roles = {"USER","ADMIN"})
		public void admin_notice() throws Exception {
			
			mvc.perform(MockMvcRequestBuilders.get("/admin/notice/write").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk())
				.andDo(MockMvcResultHandlers.print());
		}
	

}
