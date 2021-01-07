package com.souvenironline.api.admin;

import com.souvenironline.dto.UserDTO;
import com.souvenironline.service.admin.IUserAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "userAPIOfAdmin")
public class UserAPI {

    @Autowired
    private IUserAdminService userAdminService;

    @PostMapping("/api/user")
    public UserDTO createUser(@RequestBody UserDTO userDTO) {
        return userAdminService.save(userDTO);
    }

    @PutMapping("/api/user")
    public UserDTO updateUser(@RequestBody UserDTO updateUser) {
        return userAdminService.save(updateUser);
    }

    @DeleteMapping("/api/user")
    public void deleteUser(@RequestBody long[] ids) {
        userAdminService.delete(ids);
    }
}
