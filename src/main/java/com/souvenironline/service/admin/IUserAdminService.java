package com.souvenironline.service.admin;

import com.souvenironline.dto.UserDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IUserAdminService {

    List<UserDTO> findAll(Pageable pageable);

    UserDTO save(UserDTO dto);

    void delete(long[] ids);

    int getTotalItem();

    UserDTO findById(long id);

}
