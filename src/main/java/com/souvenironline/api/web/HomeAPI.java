package com.souvenironline.api.web;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.service.web.ICategoryProductWebService;
import com.souvenironline.service.web.IProductWebService;
import com.souvenironline.service.web.ISildeWebService;
import com.souvenironline.service.web.impl.ProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HomeAPI {

    @Autowired
    private ISildeWebService sildeWebService;
    @Autowired
    private ICategoryProductWebService categoryProductWebService;

    @GetMapping("/api/silde")
    public List<SildeDTO> getSilde() {
        return sildeWebService.findAll();
    }

    @GetMapping("/api/product1")
    public List<CategoryProductDTO> getProductHighlight() {
        return categoryProductWebService.findAllByLevel(0);
    }
}