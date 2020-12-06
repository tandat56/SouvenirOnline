package com.souvenironline.controller.web;

import com.souvenironline.entity.BillDetailEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@RestController
public class CheckoutController {

    @RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
    public ModelAndView checkoutPage() {

        BillDetailEntity bill = new BillDetailEntity();
        ModelAndView mav = new ModelAndView("web/checkout");
        bill.setCreatedDate(new Date());
        mav.addObject("bill", bill);
        return mav;
    }
}
