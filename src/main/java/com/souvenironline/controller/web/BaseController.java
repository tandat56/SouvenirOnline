package com.souvenironline.controller.web;


import com.souvenironline.service.web.ICategoryProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;

@Controller
public class BaseController {

    @Autowired
    private ICategoryProductWebService categoryProductWebService;

    public ModelAndView _mav = new ModelAndView("/common/web/header");

    @PostConstruct
    public ModelAndView Init() {

        ModelAndView _mav = new ModelAndView("");
        _mav.addObject("categories", categoryProductWebService.findAll());
        return _mav;
    }
}
