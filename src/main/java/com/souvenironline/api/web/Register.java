package com.souvenironline.api.web;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.UserEntity;
import com.souvenironline.service.web.IUserService;
import com.souvenironline.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/api")
public class Register {

    @Autowired
    private IUserService service;
    @Autowired
    private MessageUtil messageUtil;

    @GetMapping(value = "/registration")
    public String register(Model model){
        UserDTO dto = new UserDTO();
        model.addAttribute("userDTO", dto);
        return "web/user/register";
    }

    @PostMapping(value = "/registration")
    public ModelAndView registrationControlOrAPI(@ModelAttribute("userDTO") UserDTO dto){
        ModelAndView mav = new ModelAndView("web/user/register");
        if(dto.getFullName().isEmpty() || dto.getUserName().isEmpty() || dto.getPassword().isEmpty()){
            mav.addObject("message", "Thêm mới thất bại!");
            mav.addObject("alert", "danger");
            return mav;
        }
        UserEntity re = service.registration(dto);
        if (re != null){
            mav.addObject("message", "Thêm mới thành công!");
            mav.addObject("alert", "success");
        }
        else {
            mav.addObject("message", "Thêm mới thất bại");
            mav.addObject("alert", "danger");
        }
        return mav;
    }
}
