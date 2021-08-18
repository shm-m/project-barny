package edu.bit.ex.session;


import lombok.extern.slf4j.Slf4j;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;

import javax.servlet.annotation.WebListener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Slf4j
@WebListener
public class HttpSessionCheckingListener implements HttpSessionListener {

    private static final Map<String, HttpSession> sessions = new ConcurrentHashMap<>();
  private Logger logger = LoggerFactory.getLogger(this.getClass());

    static private int activeSessions = 0;


    public static int getActiveSessions() {
        return activeSessions;
    }

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {


        activeSessions++;
        sessions.put(httpSessionEvent.getSession().getId(), httpSessionEvent.getSession());
        System.out.println("SessionCnt:" + activeSessions);

        log.info("sessionCreated -> {}", httpSessionEvent.getSession().getAttribute("member_id"));

        System.out.println("HttpSessionCheckingListener.sessionCreated");
        System.out.println(HttpSessionCheckingListener.getActiveSessions());
    }


}

