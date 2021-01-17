package com.souvenironline.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.souvenironline.entity.UserEntity;
//import com.souvenironline.service.admin.impl.AccountServiceImpl;


@Controller(value = "userControllerOfWeb")
public class UserController  {

    @RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
    public ModelAndView Register(){
        ModelAndView mav = new ModelAndView("web/user/register");
        return mav;
    }
}
