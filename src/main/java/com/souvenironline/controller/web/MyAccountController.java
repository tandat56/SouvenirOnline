package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyAccountController {

    @RequestMapping(value = "/tai-khoan", method = RequestMethod.GET)
    public ModelAndView accountPage() {
        ModelAndView mav = new ModelAndView("web/myaccount");
        return mav;
    }
}
