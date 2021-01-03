package com.souvenironline.service.web.impl;

import com.souvenironline.converter.BlogConverter;
import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.ProductEntity;
import com.souvenironline.repository.BlogRepository;
import com.souvenironline.service.web.IBlogWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BlogWebService implements IBlogWebService {
    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private BlogConverter blogConverter;

    @Override
    public List<BlogDTO> findAll() {
        List<BlogDTO> models = new ArrayList<>();
        List<BlogEntity> entities = blogRepository.findAll();

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
        return blogConverter.toDTO(blogRepository.findOne(id));
    }
}
