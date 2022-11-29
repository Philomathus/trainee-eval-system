package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class TeamOverallScoreModel {


    public TeamOverallScoreModel(){

    }


        private String groupName;
        private int numberOfMember;
        private int averageTotalScore;
        private int rankPerGroup;
    }

