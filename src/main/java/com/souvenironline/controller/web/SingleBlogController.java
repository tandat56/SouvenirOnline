package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SingleBlogController {

    @RequestMapping(value = "/chi-tiet-bai-viet", method = RequestMethod.GET)
    public ModelAndView singleBlogPage() {
        ModelAndView mav = new ModelAndView("web/single-blog");
        return mav;
    }
}
