package com.souvenironline.controller.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class WishtListController {

    @RequestMapping(value = "/danh-sach-yeu-thich", method = RequestMethod.GET)
    public ModelAndView wishlistPage() {
        ModelAndView mav = new ModelAndView("web/wishtlist");
        return mav;
    }
}
