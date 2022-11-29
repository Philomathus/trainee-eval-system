package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class AllIndividualGradeRankingModel {

    private Integer userId;

    private String username;

    private Integer evaluationDate;

    private Integer linesOfCodes;

    private Integer jiraWorkingHours;

    private Integer actualWorkingHours;

    private Integer learningPerformance;

    private Integer developmentProcessPerformance;

    private Double avgGroupPerformance;

    private Integer bonusPoints;

    private Integer totalDeduction;

    private Integer totalPoints;

    private String letterGrade;
}
