package com.souvenironline.service.web;

import com.souvenironline.dto.ProductDTO;

import java.util.List;

public interface IProductWebService {

    List<ProductDTO> findAll();
}
