package com.souvenironline.service.web;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.ProductDTO;

import java.util.List;

public interface IBlogWebService {

    List<BlogDTO> findAll();
    int getTotalItem();
    BlogDTO findById(long id);
}
