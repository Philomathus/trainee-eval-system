package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class UpdateDetailTitleDTO {

    public UpdateDetailTitleDTO(){}

    private String detailTitle;
    private String newDetailTitle;
    private String headerId;
    private LocalDateTime updatedAt;
    private String username;

}
