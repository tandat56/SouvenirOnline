package com.souvenironline.api;

import com.souvenironline.dto.ProductDTO;
import org.springframework.web.bind.annotation.*;

@RestController(value = "productAPIOf")
public class ProductAPI {

    @PostMapping("/api/product")
    public ProductDTO createProduct(@RequestBody ProductDTO productDTO){

        return productDTO;
    }
    @PutMapping("/api/product")
    public ProductDTO updateProduct(@RequestBody ProductDTO productDTO){

        return productDTO;
    }

    @DeleteMapping("/api/product")
    public void deleteProduct(long[] ids){

    }
}
