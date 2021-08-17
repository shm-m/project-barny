package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@AutoConfigureMockMvc
@SpringBootTest
class HomeControllerTest {
	@Autowired
	private MockMvc mvc;
	//Home컨트롤러

	@Test
	void contextLoads() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/main").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads1() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/drink_test").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads2() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/story").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads3() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/subscribe").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads4() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/event").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads5() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/notice").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads6() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/notice/content/6").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}
	
	@Test
	void contextLoads7() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/notice/faq").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}

}
