package edu.bit.ex.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.page.Criteria;
import edu.bit.ex.page.PageVO;
import edu.bit.ex.service.EventService;
import edu.bit.ex.vo.EventVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/admin/event/**")
public class EventController {

    @Autowired
    EventService eventService;

    // admin event list
    @GetMapping("/main")
    public ModelAndView event_main(Criteria cri, ModelAndView mav) {
        log.info("event_main");
        mav.setViewName("event/event_list");
        mav.addObject("event_list", eventService.getList(cri));

        int total = eventService.getTotal(cri);
        mav.addObject("pageMaker", new PageVO(cri, total));

        return mav;
    }

    // list content view
    @GetMapping("/content/{board_id}")
    public ModelAndView content_view(EventVO eventVO, ModelAndView mav) {
        log.info("/content/{board_id}.. ");
        mav.setViewName("event/content_view");
        mav.addObject("content_view", eventService.get(eventVO.getBoard_id()));

        return mav;
    }

    // write
    @PostMapping("/write")
    public void write(EventVO eventVO, HttpServletResponse response) throws IOException {

        eventService.write(eventVO);
        String redirect_uri = "http://localhost:8282/admin/event";
        response.sendRedirect(redirect_uri);

    }

    @GetMapping("/write_view")
    public ModelAndView write_view(ModelAndView mav) {
        mav.setViewName("event/write_view");
        return mav;
    }

    // update
    @PutMapping("/content/{board_id}")
    public ResponseEntity<String> update(@RequestBody EventVO eventVO, ModelAndView mav) {

        ResponseEntity<String> entity = null;

        try {

            eventService.modify(eventVO);
            entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

        } catch (Exception e) {
            e.printStackTrace();
            entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }

        return entity;
    }

    // delete
    @DeleteMapping("/content/{board_id}")
    public ResponseEntity<String> delete(@PathVariable("board_id") int board_id) {
        ResponseEntity<String> entity = null;

        log.info("board_id..:" + board_id);
        try {
            int re = eventService.remove(board_id);
            log.info("delete result:" + re);
            // 삭제가 성공하면 성공 상태메시지 저장
            entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

        } catch (Exception e) {
            e.printStackTrace();
            // 삭제가 실패하면 실패 상태메시지 저장
            entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }
        // 삭제 처리 HTTP 상태 메시지 리턴
        return entity;
    }

}
