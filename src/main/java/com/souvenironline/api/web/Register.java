package com.souvenironline.api.web;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.service.web.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/api")
public class Register {

    @Autowired
    private IUserService service;

    @GetMapping(value = "/registration")
    public String register(Model model){
        UserDTO dto = new UserDTO();
        model.addAttribute("userDTO", dto);
        return "web/user/register";
    }

    @PostMapping(value = "/registration")
    public String registrationControlOrAPI(@ModelAttribute("userDTO") UserDTO dto){ //Hỏi xem muốn nó là gì
        service.registration(dto);
        return "web/user/register";
    }
}
