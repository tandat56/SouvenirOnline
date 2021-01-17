package com.souvenironline.api.admin;

import com.souvenironline.dto.CategoryProductDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.admin.IProductAdminService;
import com.souvenironline.service.web.ICategoryProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "categoryProductAPIOfAdmin")
public class CategoryProductAPI {

    @Autowired
    private ICategoryProductWebService categoryProductWebService;


    @GetMapping("/api/category-product")
    public List<CategoryProductDTO> getCategoryProduct(){
        return categoryProductWebService.findAll();
    }
    @Autowired
    private IProductAdminService productAdminService;

    @PostMapping("/api/category-product")
    public CategoryProductDTO createProduct(@RequestBody CategoryProductDTO categoryProductDTO) {
        return categoryProductWebService.save(categoryProductDTO);
    }

    @PutMapping("/api/category-product")
    public CategoryProductDTO updateProduct(@RequestBody CategoryProductDTO categoryProductDTO) {
        return categoryProductWebService.save(categoryProductDTO);
    }

    @DeleteMapping("/api/category-product")
    public void deleteProduct(@RequestBody long[] ids) {
        categoryProductWebService.delete(ids);
    }
}
