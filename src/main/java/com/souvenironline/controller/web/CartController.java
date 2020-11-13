package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CartController {

    @RequestMapping(value = "/gio-hang", method = RequestMethod.GET)
    public ModelAndView cartPage() {
        ModelAndView mav = new ModelAndView("web/cart");
        return mav;
    }
}
