package com.souvenironline.service.web;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.UserEntity;

public interface IUserService {

    UserEntity registration(UserDTO dto);
}
