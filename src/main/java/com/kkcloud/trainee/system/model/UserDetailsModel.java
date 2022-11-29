package com.kkcloud.trainee.system.model;

import lombok.Data;

import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Data
public class UserDetailsModel {
    @Id
    private int userId;
    private String userName;

    private int teamId;
    private String teamName;


    private int roleId;
    private int groupId;
    private String groupName;

    private String userEmail;
    // private String userPassword;
    private String userOnBoardingDate;
    //  private boolean userIsDeleted;
    private boolean userIsTeamLeader;
    //  private String createdBy;
    // private String createdAt;
    // private String updatedBy;
    // private String updatedAt;


//           <result column="user_id" property="userId"/>
//        <result column="user_username" property="userName"/>
//        <result column="team_id" property="teamId"/>
//        <result column="team_name" property="teamName"/>
//        <result column="role_id" property="roleId"/>
//        <result column="group_id" property="groupId"/>
//        <result column="group_name" property="groupName"/>
//        <result column="user_email" property="userEmail"/>
//        <result column="user_onboarding_date" property="userOnBoardingDate"/>
//        <result column="user_is_team_leader" property="userIsTeamLeader"/>

}
