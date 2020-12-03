package com.souvenironline.controller.web;

import com.souvenironline.service.web.ICategoryProductWebService;
import com.souvenironline.service.web.IProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerOfWeb")
public class ShopController {

    @Autowired
    private ICategoryProductWebService categoryProductWebService;

    @Autowired
    private IProductWebService productWebService;

    @RequestMapping(value = "/san-pham", method = RequestMethod.GET)
    public ModelAndView blogGridPage() {
        ModelAndView mav = new ModelAndView("web/shop-grid4");
        mav.addObject("categories", categoryProductWebService.findAll());
        mav.addObject("products", productWebService.findAll());
        return mav;
    }
}
