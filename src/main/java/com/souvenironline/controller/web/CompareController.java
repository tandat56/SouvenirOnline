package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CompareController {

    @RequestMapping(value = "/so-sanh", method = RequestMethod.GET)
    public ModelAndView comparePage() {
        ModelAndView mav = new ModelAndView("web/compare");
        return mav;
    }
}
