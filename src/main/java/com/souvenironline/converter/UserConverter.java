package com.souvenironline.converter;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.UserEntity;
import org.springframework.stereotype.Component;

@Component
public class UserConverter {

    public UserDTO toDTO(UserEntity entity) {
        UserDTO result = new UserDTO();
        result.setId(entity.getId());
        result.setUserName(entity.getUserName());
        result.setPassword(entity.getPassword());
        result.setFullName(entity.getFullName());
        result.setPhoneNumber(entity.getPhoneNumber());
        result.setEmail(entity.getEmail());
        result.setCity(entity.getCity());
        result.setAddress(entity.getAddress());
        result.setStatus(entity.getStatus());
        result.setCreatedBy(entity.getCreatedBy());
        result.setCreatedDate(entity.getCreatedDate());
        return result;
    }

    public UserEntity toEntity(UserDTO dto) {
        UserEntity result = new UserEntity();
        result.setId(dto.getId());
        result.setUserName(dto.getUserName());
        result.setPassword(dto.getPassword());
        result.setFullName(dto.getFullName());
        result.setPhoneNumber(dto.getPhoneNumber());
        result.setEmail(dto.getEmail());
        result.setCity(dto.getCity());
        result.setAddress(dto.getAddress());
        result.setStatus(dto.getStatus());
        return result;
    }
    public UserEntity toEntity(UserEntity result, UserDTO dto){
        result.setId(dto.getId());
        result.setUserName(dto.getUserName());
        result.setPassword(dto.getPassword());
        result.setFullName(dto.getFullName());
        result.setPhoneNumber(dto.getPhoneNumber());
        result.setEmail(dto.getEmail());
        result.setCity(dto.getCity());
        result.setAddress(dto.getAddress());
        result.setStatus(dto.getStatus());
        return result;
    }
}
