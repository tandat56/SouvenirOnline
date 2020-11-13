package com.souvenironline.converter;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.entity.BlogEntity;
import org.springframework.stereotype.Component;

@Component
public class BlogConverter {

    public BlogDTO toDTO(BlogEntity entity) {
        BlogDTO result = new BlogDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setShortDescription(entity.getShortDescription());
        result.setContent(entity.getContent());
        result.setThumbnail(entity.getThumbnail());
        result.setCategoryCode(entity.getCategoryBlog().getCode());
        return result;
    }

    public BlogEntity toEntity(BlogDTO dto) {
        BlogEntity result = new BlogEntity();
        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());
        return result;
    }
    public BlogEntity toEntity(BlogEntity result, BlogDTO dto){
        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setThumbnail(dto.getThumbnail());
        result.setContent(dto.getContent());
        return result;
    }
}
