package com.souvenironline.service.web;

import com.souvenironline.dto.CategoryProductDTO;

import java.util.List;

public interface ICategoryProductWebService {

    List<CategoryProductDTO> findAll();
}
