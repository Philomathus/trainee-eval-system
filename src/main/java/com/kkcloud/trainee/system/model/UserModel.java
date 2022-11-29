package com.kkcloud.trainee.system.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;


@Data
@Entity
public class UserModel {
    @Id
    private int id;

    private int departmentId;
    private int groupId;
    private int teamId;
    private int roleId;

    private String username;
    private String email;
    private String password;
    private LocalDate onboardingDate;
    private Boolean isTeamLeader;
    private Boolean isDeleted;
}

