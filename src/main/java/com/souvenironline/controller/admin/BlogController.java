package com.souvenironline.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "blogControllerOfAdmin")
public class BlogController {


    @RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(){

        ModelAndView mav = new ModelAndView("admin/blog/list");
        return mav;
    }
}
