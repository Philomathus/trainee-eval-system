package com.kkcloud.trainee.system.DTO;

import lombok.Data;

@Data
public class UserDTO {
    public UserDTO(){}

    private int user_id;
    private String detailName;
    private Boolean is_allowed;
}
