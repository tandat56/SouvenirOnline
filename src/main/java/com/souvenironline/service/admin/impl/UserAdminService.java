package com.souvenironline.service.admin.impl;

import com.souvenironline.converter.UserConverter;
import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.UserEntity;
import com.souvenironline.repository.UserRepository;
import com.souvenironline.service.admin.IUserAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserAdminService implements IUserAdminService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserConverter userConverter;

    @Override
    public List<UserDTO> findAll(Pageable pageable) {
        List<UserDTO> models = new ArrayList<>();
        List<UserEntity> entities = userRepository.findAll(pageable).getContent();

        for (UserEntity item : entities) {
            UserDTO userDTO = userConverter.toDTO(item);
            models.add(userDTO);
        }
        return models;
    }


    @Override
    @Transactional
    public UserDTO save(UserDTO dto) {
        UserEntity userEntity = new UserEntity();
        if (dto.getId() != null) {
            UserEntity oldUser = userRepository.findOne(dto.getId());
            userEntity = userConverter.toEntity(oldUser, dto);


        } else {
            userEntity = userConverter.toEntity(dto);
        }
        return userConverter.toDTO(userRepository.save(userEntity));

    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id : ids) {
            userRepository.delete(id);
        }
    }

    @Override
    public int getTotalItem() {
        return (int) userRepository.count();
    }

    @Override
    public UserDTO findById(long id) {
        UserEntity entity = userRepository.findOne(id);
        return userConverter.toDTO(entity);
    }

}
