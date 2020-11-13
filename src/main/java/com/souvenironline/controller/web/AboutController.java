package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AboutController {

    @RequestMapping(value = "/thong-tin", method = RequestMethod.GET)
    public ModelAndView aboutPage() {
        ModelAndView mav = new ModelAndView("web/about-us");
        return mav;
    }
}
