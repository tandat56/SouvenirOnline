package com.souvenironline.service;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;

import java.util.List;

public interface IBlogService {
    List<BlogDTO> findAll();
    BlogDTO findById(long id);
    BlogDTO save(BlogDTO dto);
    void delete(long[] ids);
}
