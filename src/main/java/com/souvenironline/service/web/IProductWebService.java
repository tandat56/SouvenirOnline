package com.souvenironline.service.web;

import com.souvenironline.dto.ProductDTO;

import java.util.List;

public interface IProductWebService {

    List<ProductDTO> findAll();

    List<ProductDTO> findAllProductHighlight();

    List<ProductDTO> findAllNewProduct();

    List<ProductDTO> findAllProductByCategoryCode(String code);

    int getTotalItem();

    List<ProductDTO> findById(long id);
}
