package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class TeamMemberScoreModel {
    private String username;
    private int totalCodeLines;
    private int totalLearningPerformance;
    private int totalDevelopmentPerformance;
    private int avgInGroupPerformance;
    private int jiraWorkingHours;
    private int actualWorkingHours;
    private int totalBonus;
    private int totalDeduction;
    private int totalPoints;
    private String letterGrade;

}
