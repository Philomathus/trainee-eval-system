package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class IndividualGradeModel {

    private String username;

    private Integer linesOfCodes;

    private Integer jiraWorkingHours;

    private Integer actualWorkingHours;

    private Integer learningPerformance;

    private Integer developmentProcessPerformance;

    private Double avgGroupPerformance;

    private Integer inGroupPerformance;

    private Integer bonusPoints;

    private Integer totalDeduction;

    private Integer totalPoints;

    private String letterGrade;
}
