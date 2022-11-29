package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class UpdateDTO {
    private int roleId;
    private int rolePermissionIsAllowed;
    private String updatedBy;
    private LocalDateTime updatedAt;

}
