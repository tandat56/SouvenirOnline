package com.souvenironline.api.admin;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.service.web.ICategoryProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "categoryProductAPIOfWeb")
public class CategoryProductAPI {

    @Autowired
    private ICategoryProductWebService categoryProductWebService;


    @GetMapping("/api/category-product")
    public List<CategoryProductDTO> getCategoryProduct(){
        return categoryProductWebService.findAll();
    }
}
