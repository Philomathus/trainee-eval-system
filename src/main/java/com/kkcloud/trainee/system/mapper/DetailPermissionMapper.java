package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.GetUserDTO;
import com.kkcloud.trainee.system.DTO.PermissionDTO;
import com.kkcloud.trainee.system.model.PermissionDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DetailPermissionMapper {

    // Get Detail
    List<PermissionDetail> findById(PermissionDTO permissionDTO);

    // Get User
    List<PermissionDetail> findUserById(GetUserDTO getUserDTO);

}
