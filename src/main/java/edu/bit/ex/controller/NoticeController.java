package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.page.PageVO;
import edu.bit.ex.service.NoticeService;

@RestController
@RequestMapping("/notice/*")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    // list
    @GetMapping("/main")
    public ModelAndView list(Criteria cri, ModelAndView mav) {
        mav.setViewName("notice/notice_list"); // notice/notice_list.jsp
        mav.addObject("list", noticeService.getList(cri)); // 여기서 정한게 jsp items

        int total = noticeService.getTotal(cri);
        mav.addObject("pageMaker", new PageVO(cri, total)); // 1,10 넘어가서 여기에 만들어짐

        return mav;
    }

    // FAQ
    @GetMapping("/faq")
    public ModelAndView faq(ModelAndView mav) {
        mav.setViewName("notice/faq"); // notice/notice_list.jsp

        return mav;
    }

}