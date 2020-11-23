package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.BlogConverter;
import com.souvenironline.dto.BlogDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.repository.BlogRepository;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.util.UploadFileUtils;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class BlogAdminService implements IBlogAdminService {

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private BlogConverter blogConverter;

    @Autowired
    private CategoryBlogRepository categoryBlogRepository;

    @Autowired
    private UploadFileUtils uploadFileUtils;

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
            blogEntity.setThumbnail(oldBlog.getThumbnail());
        } else {
            blogEntity = blogConverter.toEntity(dto);
            blogEntity.setCategoryBlog(category);
        }
        savePhoto(dto, blogEntity);

        return blogConverter.toDTO(blogRepository.save(blogEntity));
    }
    private void savePhoto(BlogDTO dto, BlogEntity blogEntity) {
        String path = "/photo/"+ dto.getPhotoName();
        if (dto.getPhotoBase64() != null) {
            if (blogEntity.getThumbnail() != null) {
                if (!path.equals(blogEntity.getThumbnail())) {
                    File file = new File("/home/asm/" + blogEntity.getThumbnail());
                    file.delete();
                }
            }
            byte[] bytes = Base64.decodeBase64(dto.getPhotoBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path, bytes);
            blogEntity.setThumbnail(path);
        }
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            blogRepository.delete(id);
        }
    }
}
