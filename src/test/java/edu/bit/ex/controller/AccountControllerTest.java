package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithAnonymousUser;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@AutoConfigureMockMvc
@SpringBootTest
@WithMockUser(username = "test1", password = "test1", roles = {"USER","ADMIN"})
class AccountControllerTest {
	
	@Autowired
	private MockMvc mockMvc;
	
	@Test
	public void user() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/user").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void admin() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/admin").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void login() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/loginForm").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void success_join_page() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/success_join_page").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	
	@Test
	public void joinForm() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/joinForm").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void findId() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/findId").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void findPw() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/findPw").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void f() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/f").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	public void joinForm2() throws Exception {
		
		mockMvc.perform(MockMvcRequestBuilders.get("/joinForm2").accept(MediaType.TEXT_HTML))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andDo(MockMvcResultHandlers.print());
	}
	
	

	

}
