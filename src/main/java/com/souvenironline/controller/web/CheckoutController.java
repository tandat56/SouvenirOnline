package com.souvenironline.controller.web;

import com.souvenironline.entity.BillDetailEntity;
import com.souvenironline.entity.BillEntity;
import com.souvenironline.entity.UserEntity;
import com.souvenironline.util.SecurityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@RestController
public class CheckoutController {

    @RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
    public ModelAndView checkoutPage(HttpServletRequest request, HttpSession session, Model model) {
        ModelAndView mav = new ModelAndView("web/checkout");
        BillEntity bill = new BillEntity();
        bill.setUserOrder(SecurityUtils.getPrincipal().getFullName());
        bill.setOrderDate(new Date());
        bill.setPhoneNumber(SecurityUtils.getPrincipal().getPhoneNumber());
        model.addAttribute("bill", bill);

        return mav;
    }
    @RequestMapping(value = "/thanh-toan", method = RequestMethod.POST)
    public String checkoutBillPage(HttpServletRequest request, HttpSession session, @ModelAttribute("bill") BillEntity bill) {
        ModelAndView mav = new ModelAndView("web/checkout");


        return "mav";
    }
}
