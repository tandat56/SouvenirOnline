package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.BlogConverter;
import com.souvenironline.converter.SildeConverter;
import com.souvenironline.dto.BlogDTO;
import com.souvenironline.dto.SildeDTO;
import com.souvenironline.entity.BlogEntity;
import com.souvenironline.entity.CategoryBlogEntity;
import com.souvenironline.entity.SildeEntity;
import com.souvenironline.repository.BlogRepository;
import com.souvenironline.repository.CategoryBlogRepository;
import com.souvenironline.repository.SildeRepository;
import com.souvenironline.service.admin.IBlogAdminService;
import com.souvenironline.service.admin.ISildeAdminService;
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
public class SildeAdminService implements ISildeAdminService {

    @Autowired
    private SildeRepository sildeRepository;

    @Autowired
    private SildeConverter sildeConverter;

    @Autowired
    private UploadFileUtils uploadFileUtils;

    @Override
    public List<SildeDTO> findAll(Pageable pageable) {
        List<SildeDTO> models = new ArrayList<>();
        List<SildeEntity> entities = sildeRepository.findAll(pageable).getContent();
        for (SildeEntity item : entities) {
            SildeDTO sildeDTO = sildeConverter.toDTO(item);
            models.add(sildeDTO);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) sildeRepository.count();
    }

    @Override
    public SildeDTO findById(long id) {
        SildeEntity entity = sildeRepository.findOne(id);
        return sildeConverter.toDTO(entity);
    }

    @Override
    @Transactional
    public SildeDTO save(SildeDTO dto) {
        SildeEntity sildeEntity = new SildeEntity();
        if (dto.getId() != null) {
            SildeEntity oldSilde = sildeRepository.findOne(dto.getId());
            sildeEntity = sildeConverter.toEntity(oldSilde, dto);
            sildeEntity.setImage(oldSilde.getImage());
        } else {
            sildeEntity = sildeConverter.toEntity(dto);
        }
        savePhoto(dto, sildeEntity);

        return sildeConverter.toDTO(sildeRepository.save(sildeEntity));
    }
    private void savePhoto(SildeDTO dto, SildeEntity sildeEntity) {
        String path = "/photo/"+ dto.getPhotoName();
        if (dto.getPhotoBase64() != null) {
            if (sildeEntity.getImage() != null) {
                if (!path.equals(sildeEntity.getImage())) {
                    File file = new File("/home/asm/" + sildeEntity.getImage());
                    file.delete();
                }
            }
            byte[] bytes = Base64.decodeBase64(dto.getPhotoBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path, bytes);
            sildeEntity.setImage(path);
        }
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            sildeRepository.delete(id);
        }
    }
}
