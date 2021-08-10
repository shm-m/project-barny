package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.page.PageVO;
import edu.bit.ex.service.ProductMainService;
import edu.bit.ex.vo.ProductMainVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProductMainController {

    // 상품보기
    @Autowired
    private ProductMainService productMainService;

    // 상품보기
 	@GetMapping("/product_main")
 	public String product_main(Model model) {

 		log.info("product_main()..");
 		model.addAttribute("product_main", productMainService.getList());

 		return "product/product_main";
 	}

 	// 상품 - 술
 	@GetMapping("/product_main_liquor")
 	public String product_main_liquor(Model model, Criteria cri) {

 		log.info("product_main_liquor()..");
 		model.addAttribute("product_main_liquor", productMainService.getList1(cri));
 		
 		int total = productMainService.getTotal1(cri);
 		model.addAttribute("pageMaker", new PageVO(cri, total));

 		return "product/product_main_liquor";
 	}

 	// 상품 - 안주
 	@GetMapping("/product_main_food")
 	public String product_main_food(Model model, Criteria cri) {

 		log.info("product_main_food()..");
 		model.addAttribute("product_main_food", productMainService.getList2(cri));
 		
 		int total = productMainService.getTotal2(cri);
 		model.addAttribute("pageMaker", new PageVO(cri, total));

 		return "product/product_main_food";
 	}

 	// 상품상세보기
 	@GetMapping("/product_view")
 	public String product_view(ProductMainVO productMainVO, Model model, Criteria cri) {
 		log.info("product_view()..");
 		model.addAttribute("product_view", productMainService.get(productMainVO.getProduct_id()));
 		model.addAttribute("list", productMainService.getListReview(cri, productMainVO.getProduct_id()));

 		int total = productMainService.getTotal(cri, productMainVO.getProduct_id());
 		model.addAttribute("pageMaker", new PageVO(cri, total));

 		return "product/product_view";
 	}

}
