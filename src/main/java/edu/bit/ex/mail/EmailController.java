/*package edu.bit.ex.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/api")
public class EmailController {

    @Autowired
    EmailService emailService;
    @Autowired
    private JavaMailSender javaMailSender;


    @GetMapping("/sendEmail")
    public void emailValidation() {
        return emailService.sendEmail();
    }


}*/
