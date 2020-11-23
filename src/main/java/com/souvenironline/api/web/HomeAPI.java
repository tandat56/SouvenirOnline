package com.souvenironline.api.web;

import com.souvenironline.dto.SildeDTO;
import com.souvenironline.service.web.ISildeWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HomeAPI {

    @Autowired
    private ISildeWebService sildeWebService;

    @GetMapping("/api/silde")
    public List<SildeDTO> getSilde() {
        return sildeWebService.findAll();
    }
}
