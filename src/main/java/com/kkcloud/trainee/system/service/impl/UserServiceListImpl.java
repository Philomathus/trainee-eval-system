package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.mapper.UserDetailsMapper;
import com.kkcloud.trainee.system.model.DepartmentModel;
import com.kkcloud.trainee.system.model.GroupModel;
import com.kkcloud.trainee.system.model.UserDetailsModel;
import com.kkcloud.trainee.system.service.iface.UserServiceList;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Slf4j
@Service
public class UserServiceListImpl implements UserServiceList {
    @Autowired
    private UserDetailsMapper userDetailsMapper;

    @Override
    public List<TeamDTO> getAllTeamDetails(PositionDTO positionDTO) {
        return userDetailsMapper.getAllTeamDetails(positionDTO);
    }


    @Override
    public List<DepartmentModel>getAllDepartment(){
        return  userDetailsMapper.getAllDepartment();
    }

    @Override
    public List<GroupModel>getAllGroupList(PositionDTO positionDTO){
        return userDetailsMapper.getAllGroupList(positionDTO);
    }
    @Override
    public List<UserDetailsModel>getAllUser(PositionDTO positionDTO){
        log.info("roleId: " ,positionDTO.getRoleId());
        if(positionDTO.getRoleId()==3){

            return userDetailsMapper.getEvaluateList(positionDTO);

        } else if(positionDTO.getRoleId()==2){
            return userDetailsMapper.getMentorEvaluateList(positionDTO);
        }
        else{
            return userDetailsMapper.getAllUser(positionDTO);
        }
    }

    @Override
    public List<UserDetailsModel>getEvaluateList(PositionDTO positionDTO){
        return userDetailsMapper.getEvaluateList(positionDTO);
    }
//
//    @Override
//    List<UserDetailsModel> getAllTeamDetails(TeamDTO teamDTO){
//        return userDetailsMapper.getAllTeamDetails(teamDTO);
//    }
//
//    @Override
//    public List<UserDetailsModel> getAllDepartment(DepartmentDTO departmentDTO) {
//        return userDetailsMapper.findAllDepartment(departmentDTO);
//
//    }
//
//    @Override
//    public List<UserDetailsModel> getAllGroup(GroupDTO groupDTO) {
//        return userDetailsMapper.findAllGroup(groupDTO);
//    }
//    @Override
//    public  List<UserDetailsModel>getAllUser(UserListDTO userListDTO){
//        return userDetailsMapper.findAllUser(userListDTO);
//    }
}
