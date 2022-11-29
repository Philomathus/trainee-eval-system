package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.model.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDetailsMapper {

    List<TeamDTO>getAllTeamDetails(PositionDTO positionDTO);

    List<DepartmentModel>getAllDepartment();

    List<GroupModel>getAllGroupList(PositionDTO positionDTO);

    List<UserDetailsModel>getAllUser(PositionDTO positionDTO);

    List<UserDetailsModel>getEvaluateList(PositionDTO positionDTO);

    List<UserDetailsModel> getMentorEvaluateList(PositionDTO positionDTO);




}
