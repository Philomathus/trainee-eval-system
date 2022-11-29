package com.kkcloud.trainee.system.model;

import com.kkcloud.trainee.system.DTO.TeamDTO;
import lombok.Data;

import javax.persistence.Id;

@Data
public class TeamModel{





    public TeamModel(){

    }

    private  int groupId;

    @Id
    private int teamId;
    private String teamName;

//    private String createdBy;
//    private String updatedBy;
//    private String createdAt;
//    private String updatedAt;


    @Override
    public String toString() {
        return "UserDetailsModel{" +
                "teamId=" + teamId +
                ", groupId=" + groupId +
                ", teamName='" + teamName + '\'' +
//                ", createdBy=" + createdBy +
//                ", createdAt=" + createdAt +
//                ", updatedBy=" + updatedBy +
//                ", updatedAt=" + updatedAt +
                '}';
    }
}
