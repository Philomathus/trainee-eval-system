package com.kkcloud.trainee.system.DTO;


import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Data
public class ChangePasswordDto {

    private int userId;
    private String oldPassword;

    @NotBlank(message = "Password cannot be empty or null.")
    @NotNull
    @NotEmpty
    private String  newPassword;
    private String  updatedBy;
    private LocalDateTime updatedAt;

}
