package edu.bit.ex.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
@RequestMapping("/user/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// 장바구니 리스트 
	/*@GetMapping("/cart3")
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
	@ResponseBody
	@GetMapping("/writeCart")	
	public String writeCart(CartVO cartVO, Principal principal, @AuthenticationPrincipal MemberContext ctx) {
		
		log.info("writeCart() ..");
		
		log.info("principal" + principal.getName());
		log.info("principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("cartVO().." + cartVO);
		
		cartVO.setMember_idx(ctx.getMemberVO().getMember_idx());
		
		cartService.writeCart(cartVO);
		
		return "SUCCESS";
	} 
	*/
	
	@GetMapping("/writeCart")	
	public String writeCart(@ModelAttribute CartVO cartVO, HttpSession session) {
		
		int member_idx = (int)session.getAttribute("member_idx");
		if(member_idx == 0) {
			return "redirect:/loginForm";
		}
		
		cartVO.setMember_idx(member_idx);		
		cartService.writeCart(cartVO);
		
		return "SUCCESS";
	} 
	
	@RequestMapping("/cart3")	
	public ModelAndView cart3(ModelAndView mav, HttpSession session) {
		
		Map<String, Object> map = new HashMap<>();
		
		int member_idx = (int)session.getAttribute("member_idx");
		
		if(member_idx != 0) {
			List<CartVO> cartList = cartService.cartList(member_idx);
			int sumMoney = cartService.sumMoney(member_idx);
			int fee = sumMoney >= 30000 ? 0 :2500;
			// 배송료 계산 : 3000원 넘으면 배송료가 0, 안넘으면 2500원
			
			map.put("sumMoney", sumMoney);
			map.put("fee", fee);
			map.put("sum", sumMoney+fee); // 전체 금액
			map.put("cartList", cartList);
			map.put("count", cartList.size()); // 상품 갯수
			
			mav.setViewName("cart/cart3");
			mav.addObject("map", map);		
					
		} else {
			
			
		}
		return new ModelAndView("loginForm", "", null);
		
	}
	
	@GetMapping("/delete")	
	public String delete(@RequestParam int product_id) {
								
		cartService.removeProduct(product_id);
		
		return "redirect:/cart3";
	} 
	
	@GetMapping("/deleteAll")	
	public String deleteAll(HttpSession session) {
								
		int member_idx = (int)session.getAttribute("member_idx");
		if(member_idx != 0) {
			cartService.removeAll(member_idx);
		}

		return "redirect:/cart3";
	} 
	
}
