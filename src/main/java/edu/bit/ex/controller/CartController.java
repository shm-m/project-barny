package edu.bit.ex.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import edu.bit.ex.service.cart.CartService;
import edu.bit.ex.vo.cart.CartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CartController {
	
	  @Autowired
	 private CartService cartService;
	
	// 장바구니
	@GetMapping("user/cart3")
	public String cart3(Model model, Principal principal) {

		log.info("cart3()..");
		model.addAttribute("cart3", principal.getName());
		// model.addAttribute("cart3", cartService.getList());

		return "cart/cart3";
	}	
	 	 
	 /* @ResponseBody
	 @RequestMapping(value = "/cart/cart3", method = RequestMethod.POST)
	 public void cart3(CartVO cart, HttpSession session) throws Exception {
		 
		 MemberVO member = (MemberVO)session.getAttribute("member");
		 cart.setMember_id(member.getMember_id());
		 
		  cartService.getList();
	 } 

		@ResponseBody
		@PostMapping("/user/cart4") 
		public String cart4(CartVO cartVO) {	
			log.info("cart4()..");
			// log.info(cartVO);
			
			cartService.getList(cartVO.getMember_id());
					
			return "SUCCESS";
			// jsp 안에 success의 result의 값으로 간다.
		} */
	
	@RequestMapping("/user/cart3")
	public String write(CartVO cartVO, Model model) {
		log.info("write()");

		cartService.write(cartVO);

		return "redirect:product_view";
	}
}
