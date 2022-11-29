package com.kkcloud.trainee.system.model;

import lombok.Data;


@Data
public class IndividualGradeMonthModel {
    private String traineeUserId;
    private String userName;
    private String evaluationDate;
    private String letterGrade;
}
