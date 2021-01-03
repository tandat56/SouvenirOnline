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
public class UserController extends BaseController {
//    @Autowired
//    AccountServiceImpl accountService = new AccountServiceImpl();

    @RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
    public ModelAndView Register(){
        _mav.setViewName("web/user/register");
        _mav.addObject("user", new UserEntity());
        return _mav;
    }

//    @RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
//    public ModelAndView CreateAcc(@ModelAttribute("user") UserEntity userEntity){
////        int count = accountService.AddAccount(userEntity);
//        if(count > 0 ){
//            _mav.addObject("status","Đăng kí thành công");
//        }else{```
//            _mav.addObject("status","Thất bại");
//        }
//      _mav.setViewName("web/user/register");
//        return _mav;
//    }
}
