package com.kkcloud.trainee.system.DTO;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Data
public class MentorEvaluationFormDTO {
    public MentorEvaluationFormDTO(){}

    private int traineeEvaluationId;
    private int currentDateMonth;
    private int traineeId;
    private int mentorId;
    private String updatedBy;
    @JsonFormat(pattern="yyyy-MM-dd")
    private LocalDateTime updatedAt;

    /*Individual Performance*/
    private int lineOfCode;
    private int jiraWorkingHours;
    private int actualWorkingHours;
    private int learningPerformance;
    private int developmentPerformance;

    /*In-Group Performance*/
    private int workAttitude;
    private int professionalLevel;
    private int personalGrowth;
    private int teamWork;
    private int workUnderPressure;

    /*Point Bonuses*/
    private int leadership;
    private int knowledgeSharing;
    private int documentProduction;
    private int totalBonus;

    /*Point Deductions*/
    private int workViolation;
    private int leave;
    private int late;
    private int absenteeism;
    private int totalDeduction;
    private int totalGrade;

    private int traineeEvaluationDate;
}

