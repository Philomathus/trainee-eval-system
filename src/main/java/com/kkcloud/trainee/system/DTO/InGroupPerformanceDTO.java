package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class InGroupPerformanceDTO {

    public InGroupPerformanceDTO(){}

    private int traineeEvaluationDate;
    private int traineeUserId;
    private int traineeEvaluationId;
    private int evaluatorUserId;
    private int teamwork;
    private int workAttitude;
    private int personalGrowth;
    private int professionalLevel;
    private int workUnderPressure;
    private String createdBy;
    private String updatedBy;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDate updatedAtFilter; //for getting list
    private int dateFilter;

}
