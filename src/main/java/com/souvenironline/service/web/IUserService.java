package com.souvenironline.service.web;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.entity.UserEntity;

public interface IUserService {

    /**
     * Hàm này có tác dụng đăng kí tài khoản
     * @return
     */
    UserEntity registration(UserDTO dto);
}
