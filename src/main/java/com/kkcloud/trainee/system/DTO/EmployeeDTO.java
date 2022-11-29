package com.kkcloud.trainee.system.DTO;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class EmployeeDTO {

    public EmployeeDTO(){}

    private String userName;
    private String groupName;
    private String userOnboardDate;
    private String departmentId;

}
