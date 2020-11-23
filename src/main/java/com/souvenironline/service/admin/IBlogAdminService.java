package com.souvenironline.service.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IBlogAdminService {
    List<BlogDTO> findAll(Pageable pageable);
    int getTotalItem();
    BlogDTO findById(long id);
    BlogDTO save(BlogDTO dto);
    void delete(long[] ids);
}
