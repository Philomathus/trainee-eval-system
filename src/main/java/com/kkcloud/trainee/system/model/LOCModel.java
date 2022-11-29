package com.kkcloud.trainee.system.model;

import lombok.Data;

@Data
public class LOCModel {

    private String user_username;
    private String group_name;
    private int total_lines_of_codes;
    private int total_lines_of_codes_rate;

}
