package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CheckoutController {

    @RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
    public ModelAndView checkoutPage() {
        ModelAndView mav = new ModelAndView("web/checkout");
        return mav;
    }
}
