package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.GetUserDTO;
import com.kkcloud.trainee.system.DTO.UserDTO;
import com.kkcloud.trainee.system.DTO.UserDetailsDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserPermissionMapper {
    List<UserDetailsDTO> findById(UserDTO userDTO);
    List<UserDetailsDTO> findUserById(GetUserDTO getUserDTO);
}
