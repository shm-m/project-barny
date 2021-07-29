package edu.bit.ex.controller;



import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
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
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.service.cart.CartService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.MemberContext;
import edu.bit.ex.vo.cart.CartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// 장바구니 리스트 
	@GetMapping("user/cart3")
	public String cart3(Model model, Principal principal,@AuthenticationPrincipal MemberContext ctx) {

		log.info("Principal" + principal.getName());
		log.info("Principal" + ctx.getMemberVO().getMember_idx());
		
      
		log.info("Principal" + ctx.getMemberVO().getMember_idx());		
		
		List<CartVO> cartList = cartService.cartList(ctx.getMemberVO().getMember_idx());
		
		model.addAttribute("cartList", cartList);
		
		log.info("List<CartVO> cartList" +  cartList);		
		
		
		return "cart/cart3";
	}	
	 	 	
	// 장바구니 담기
	@RequestMapping("/user/cart3")
	public String write(Model model, Principal principal, @AuthenticationPrincipal MemberContext ctx) {
		
		log.info("principal" + principal.getName());
		log.info("principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("principal" + ctx.getMemberVO().getMember_idx());

		// cartService.write(cartVO);

		return "redirect:product_view";
	}
}
