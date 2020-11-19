package com.souvenironline.service.impl;

import com.souvenironline.converter.BlogConverter;
import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.repository.BlogRepository;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.service.IBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class BlogService implements IBlogService {

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private BlogConverter blogConverter;

    @Autowired
    private CategoryBlogRepository categoryBlogRepository;

    @Override
    public List<BlogDTO> findAll(Pageable pageable) {
        List<BlogDTO> models = new ArrayList<>();
        List<BlogEntity> entities = blogRepository.findAll(pageable).getContent();
        for (BlogEntity item : entities) {
            BlogDTO blogDTO = blogConverter.toDTO(item);
            models.add(blogDTO);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) blogRepository.count();
    }

    @Override
    public BlogDTO findById(long id) {
        BlogEntity entity = blogRepository.findOne(id);
        return blogConverter.toDTO(entity);
    }

    @Override
    @Transactional
    public BlogDTO save(BlogDTO dto) {
        CategoryBlogEntity category = categoryBlogRepository.findOneByCode(dto.getCategoryCode());
        BlogEntity blogEntity = new BlogEntity();
        if (dto.getId() != null) {
            BlogEntity oldBlog = blogRepository.findOne(dto.getId());
            oldBlog.setCategoryBlog(category);
            blogEntity = blogConverter.toEntity(oldBlog, dto);
        } else {
            blogEntity = blogConverter.toEntity(dto);
            blogEntity.setCategoryBlog(category);
        }
        return blogConverter.toDTO(blogRepository.save(blogEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            blogRepository.delete(id);
        }
    }
}
