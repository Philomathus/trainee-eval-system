package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

@Data
public class LoginDTO {

    @NotEmpty
    @NotBlank(message = "Username cannot be empty or null.")
    private String username;

    @NotEmpty
    @NotBlank(message = "Password cannot be empty or null.")
    private String password;
}
