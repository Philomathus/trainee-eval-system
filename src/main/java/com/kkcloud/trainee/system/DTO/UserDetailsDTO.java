package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.util.List;

@Data
public class UserDetailsDTO {

    public UserDetailsDTO(){}

    private String headerTitle;
    private List<DetailsDTO> details;

}
