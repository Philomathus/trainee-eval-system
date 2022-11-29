package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class CsvExportModel {
    private String username;
    private int totalCodeLines;
    private int totalLearningPerformance;
    private int totalDevelopmentPerformance;
    private int jiraWorkingHours;
    private int actualWorkingHours;
    private int totalBonus;
    private int totalDeduction;
    private int totalPoints;
    private String totalGrade;
    private int avg_in_group_performance;

}
