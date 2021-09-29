package ru.javastudy.SpringStudy.mvc.redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RedirectController {

    //redirect to external URL
    @RequestMapping(value = "/redirectExample",method = RequestMethod.GET)
    public String redirectExample(HttpServletRequest request){
        return "redirect: "+request.getScheme()+"://javastudy.ru";
    }
}
