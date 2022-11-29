package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.model.DepartmentModel;
import com.kkcloud.trainee.system.model.GroupModel;
import com.kkcloud.trainee.system.model.TeamModel;
import com.kkcloud.trainee.system.model.UserDetailsModel;

import java.util.List;

public interface UserServiceList {

    List<TeamDTO> getAllTeamDetails(PositionDTO positionDTO);


    List<DepartmentModel>getAllDepartment();

    List<GroupModel>getAllGroupList(PositionDTO positionDTO);

    List<UserDetailsModel>getAllUser(PositionDTO positionDTO);

    List<UserDetailsModel>getEvaluateList(PositionDTO positionDTO);
//    List<UserDetailsModel> getAllDepartment(DepartmentDTO departmentDTO);
//
//
//    List<UserDetailsModel> getAllGroup(GroupDTO groupDTO);
//
//    List<UserDetailsModel>getAllUser(UserListDTO userListDTO);

}
