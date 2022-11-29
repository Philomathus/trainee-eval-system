package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.util.List;

@Data
public class TeamDetailsDTO {
    private int groupId;
    private List<TeamDTO> teamDetails;
}
