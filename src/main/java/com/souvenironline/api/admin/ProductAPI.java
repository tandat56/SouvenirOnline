package com.souvenironline.api.admin;

import com.souvenironline.dto.ProductDTO;
import com.souvenironline.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "productAPIOfAdmin")
public class ProductAPI {

    @Autowired
    private IProductService productService;

    @PostMapping("/api/product")
    public ProductDTO createProduct(@RequestBody ProductDTO productDTO) {
        return productService.save(productDTO);
    }

    @PutMapping("/api/product")
    public ProductDTO updateProduct(@RequestBody ProductDTO updateProduct) {
        return productService.save(updateProduct);
    }

    @DeleteMapping("/api/product")
    public void deleteProduct(@RequestBody long[] ids) {
        productService.delete(ids);
    }

}
