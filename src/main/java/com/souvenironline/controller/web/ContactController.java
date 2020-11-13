package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ContactController {

    @RequestMapping(value = "/lien-he", method = RequestMethod.GET)
    public ModelAndView contactPage() {
        ModelAndView mav = new ModelAndView("web/contact");
        return mav;
    }
}
