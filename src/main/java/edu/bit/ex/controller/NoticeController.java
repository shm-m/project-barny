package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.service.NoticeService;

@RestController
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    // not paging list
    @GetMapping("/notice")
    public ModelAndView list(ModelAndView mav) {
        mav.setViewName("notice/notice_list"); // restful/rest_list.jsp
        mav.addObject("list", noticeService.getList()); // 여기서 정한게 jsp items

        return mav;
    }

    // FAQ

}