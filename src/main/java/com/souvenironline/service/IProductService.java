package com.souvenironline.service;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.ProductDTO;

import java.util.List;

public interface IProductService {

    List<ProductDTO> findAll();

    ProductDTO save(ProductDTO dto);

    void delete(long[] ids);

    ProductDTO findById(long id);
}
