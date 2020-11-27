package com.souvenironline.service.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * The interface Blog admin service.
 */
public interface IBlogAdminService {


    /**
     * Find all list.
     *
     * @param pageable the pageable
     * @return the list
     */
    List<BlogDTO> findAll(Pageable pageable);


    /**
     * Gets total item.
     *
     * @return the total item
     */
    int getTotalItem();


    /**
     * Find by id blog dto.
     *
     * @param idOfBlog the id of blog
     * @return the blog dto
     */
    BlogDTO findById(long idOfBlog);

    /**
     * Save blog dto.
     *
     * @param dto the dto
     * @return the blog dto
     */
    BlogDTO save(BlogDTO dto);

    /**
     * Delete.
     *
     * @param ids the ids
     */
    void delete(long[] ids);
}
