package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithAnonymousUser;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;


@AutoConfigureMockMvc
@SpringBootTest
class OrderControllerTest {

	@Autowired
	private MockMvc mockMvc;

	@Test
	@WithUserDetails("test1")
	public void OrderTest() throws Exception {
		// 구매내역
		mockMvc.perform(MockMvcRequestBuilders.get("/user/order").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
		

	}
	
	
	@Test
	@WithUserDetails("test1")
	public void OrderTest3() throws Exception {
		// 바로구매
		mockMvc.perform(MockMvcRequestBuilders.get("/orderPage").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
		

	}


}
