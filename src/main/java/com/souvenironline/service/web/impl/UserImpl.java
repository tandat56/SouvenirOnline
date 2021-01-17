package com.souvenironline.service.web.impl;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.RoleEntity;
import com.souvenironline.entity.UserEntity;
import com.souvenironline.repository.UserRepository;
import com.souvenironline.service.web.IUserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
public class UserImpl implements IUserService {

    @Autowired
    private UserRepository repo;

    @Override
    public UserEntity registration(UserDTO dto) {
        UserEntity user = new UserEntity(dto.getId(), dto.getCreatedDate(), dto.getModifiedDate(), dto.getCreatedBy(), dto.getModifiedBy()
                ,dto.getUserName(), dto.getPassword(), dto.getFullName(), dto.getPhoneNumber(), dto.getEmail(), dto.getCity(), dto.getAddress(), dto.getStatus(),
                Arrays.asList(new RoleEntity("USER")));
        user.setAddress(dto.getAddress());
        user.setEmail(dto.getEmail());
        user.setPhoneNumber(dto.getPhoneNumber());
        user.setPassword(BCrypt.hashpw(dto.getPassword(), BCrypt.gensalt(12)));
        return repo.save(user);
    }
}
