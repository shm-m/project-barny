package edu.bit.ex.session;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
@RestController
public class SessionDemoController {

//    private static final Logger logger = LoggerFactory.getLogger(SessionDemoController.class);

    @GetMapping("/get-session-count")
    public String testSessionListner(HttpServletRequest request, HttpServletResponse response){

        HttpSession session = request.getSession(false);
        if(session == null){
            log.info("Unable to find session. Creating a new session");
            session = request.getSession(true);
            System.out.println("session = " + session);
        }
        return "Session Test completed";
    }
}