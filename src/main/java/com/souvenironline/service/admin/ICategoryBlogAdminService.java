package com.souvenironline.service.admin;

import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.dto.CategoryProductDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface ICategoryBlogAdminService {

    Map<String,String> findAll();
    CategoryBlogDTO save(CategoryBlogDTO dto);
    void delete(long[] ids);
    List<CategoryBlogDTO> findAllBlog();

    List<CategoryBlogDTO> findAlll(Pageable pageable);
    int getTotalItem();
    CategoryBlogDTO findById(long id);
}

