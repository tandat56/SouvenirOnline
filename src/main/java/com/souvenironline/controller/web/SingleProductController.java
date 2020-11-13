package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SingleProductController {

    @RequestMapping(value = "/chi-tiet-san-pham", method = RequestMethod.GET)
    public ModelAndView singlePPage() {
        ModelAndView mav = new ModelAndView("web/single-product");
        return mav;
    }
}
