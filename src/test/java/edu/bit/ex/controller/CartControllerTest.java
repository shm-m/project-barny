package edu.bit.ex.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import edu.bit.ex.vo.cart.CartVO;

@AutoConfigureMockMvc
@SpringBootTest
class CartControllerTest {

	@Autowired
	private MockMvc mvc;

	@Test
	@WithUserDetails("test1")
	void contextLoads() throws Exception {

		mvc.perform(MockMvcRequestBuilders.get("/user/cart5").accept(MediaType.TEXT_HTML))
				.andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers.print());
	}

	

}
