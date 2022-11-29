package com.kkcloud.trainee.system.DTO;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import java.time.LocalDate;

@Data
public class UserLoggedInDTO {
    private int id;

    private int departmentId;
    private int groupId;
    private int teamId;
    private int roleId;

    private String username;
    private String email;

    @JsonFormat(pattern="yyyy-MM-dd")
//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="dd/MM/yyyy", timezone="EST")
    private LocalDate onboardingDate;
    private Boolean isTeamLeader;
    private Boolean isDeleted;
}