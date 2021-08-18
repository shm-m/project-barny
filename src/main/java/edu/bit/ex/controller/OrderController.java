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
import edu.bit.ex.service.cart.OrderService;
import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.MemberContext;
import edu.bit.ex.vo.cart.CartVO;
import edu.bit.ex.vo.cart.OrderPaymentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class OrderController {
	
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private MemberService memberService;
	
	// 장바구니, 주문자 리스트 
	@GetMapping("/user/order")
	public String order(Model model, Principal principal,@AuthenticationPrincipal MemberContext ctx) {

		log.info("Principal" + principal.getName());
		log.info("Principal" + ctx.getMemberVO().getMember_idx());
						
		List<CartVO> cartList = cartService.cartList(ctx.getMemberVO().getMember_idx());
		List<OrderPaymentVO> orderList = orderService.orderList(ctx.getMemberVO().getMember_idx());
		
		model.addAttribute("cartList", cartList);
		model.addAttribute("orderList", orderList); 
		
		log.info("List<CartVO> cartList" +  cartList);
		log.info("List<OrderPaymentVO> orderList" +  orderList);
		
		
		return "order/order";
	}	
					
/*		@ResponseBody
		@RequestMapping(value="/verifyIamport/{imp_uid}")
		public IamportResponse<Payment> paymentByImpUid(
				Model model
				, Locale locale
				, HttpSession session
				, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
		{	
				return api.paymentByImpUid(imp_uid);
		}
		
	}*/

	// 바로구매
	/* @ResponseBody	 
	@GetMapping("/user/order2")	
	public String order2(CartVO cartVO, Principal principal, @AuthenticationPrincipal MemberContext ctx) {
		
		log.info("order2() ..");
		
		log.info("principal" + principal.getName());
		log.info("principal" + ctx.getMemberVO().getMember_idx());
		
		log.info("cartVO().." + cartVO);
		
		cartVO.setMember_idx(ctx.getMemberVO().getMember_idx());
		
		cartService.order2(cartVO);
		
		return "SUCCESS";
	} */
	
	@GetMapping("/orderPage")
	public String orderPage() {
		return "order/orderPage";
	}
	
	
}
