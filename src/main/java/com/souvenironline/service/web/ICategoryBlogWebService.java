package com.souvenironline.service.web;


import com.souvenironline.dto.CategoryBlogDTO;

import java.util.List;

public interface ICategoryBlogWebService {

    List<CategoryBlogDTO> findAll();
    List<CategoryBlogDTO> findAllByLevel(int level);
}
