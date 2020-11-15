package com.souvenironline.service;

import com.souvenironline.dto.CategoryBlogDTO;

import java.util.List;
import java.util.Map;

public interface ICategoryBlogService {

    Map<String,String> findAll();
    CategoryBlogDTO save(CategoryBlogDTO dto);
    void delete(long[] ids);
    List<CategoryBlogDTO> findAllBlog();
}
