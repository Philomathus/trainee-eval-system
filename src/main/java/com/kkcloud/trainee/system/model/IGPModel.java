package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class IGPModel {
    private String username;
    private String role;
    private String group;
    private double average_teamwork;
    private double average_work_attitude;
    private double average_personal_growth;
    private double average_professional_level;
    private double average_work_under_pressure;
    private double total_points;
    private int ranking_score;
}
