package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class OverallScoreModel {

    private int deptId;

    private String username;

    private String groupName;

    private int totalScore;

    private String letterGrade;
}
