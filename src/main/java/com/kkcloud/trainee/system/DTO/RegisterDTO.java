package com.kkcloud.trainee.system.DTO;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class RegisterDTO {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int userId;
    private String email;
    private String password;
    private int teamId;
    private int roleId;
    private String userUsername;
    private LocalDateTime createdAt;
    private String createdBy;
    @JsonFormat(pattern="yyyy-MM-dd")
    private LocalDate userOnboardingDate;
    private int userIsDeleted;
    private int userIsTeamLeader;


}

