package com.kkcloud.trainee.system.DTO;

import lombok.Data;

@Data
public class GetUserDTO {

    public GetUserDTO(){}

    private int userId;
    private String detailName;
    private Boolean isAllowed;
    private int roleId;
}
