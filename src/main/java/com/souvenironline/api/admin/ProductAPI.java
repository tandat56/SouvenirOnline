package com.souvenironline.api.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.admin.IProductAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "productAPIOfAdmin")
public class ProductAPI {

    @Autowired
    private IProductAdminService productAdminService;

    @PostMapping("/api/product")
    public ProductDTO createProduct(@RequestBody ProductDTO productDTO) {
        return productAdminService.save(productDTO);
    }

    @PutMapping("/api/product")
    public ProductDTO updateProduct(@RequestBody ProductDTO updateProduct) {
        return productAdminService.save(updateProduct);
    }

    @DeleteMapping("/api/product")
    public void deleteProduct(@RequestBody long[] ids) {
        productAdminService.delete(ids);
    }
}
