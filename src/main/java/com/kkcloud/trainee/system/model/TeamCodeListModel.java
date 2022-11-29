package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class TeamCodeListModel {

    private String group_name;
    private int total_members;
    private int total_codes;
    private int earned_point;
}
