package com.souvenironline.dto;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserDTO extends AbstractDTO<UserDTO> {

    private String userName;
    private String password;
    private String fullName;
    private String phoneNumber;
    private String email;
    private String city;
    private String address;
    private Integer status;
}
