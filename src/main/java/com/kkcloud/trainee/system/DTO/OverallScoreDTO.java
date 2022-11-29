package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

@Data
public class OverallScoreDTO {


    @NotEmpty
    @NotBlank
    private int userId;


    @NotEmpty
    @NotBlank
    private int traineeEvaluationDate;


    private String traineeUserName;
}
