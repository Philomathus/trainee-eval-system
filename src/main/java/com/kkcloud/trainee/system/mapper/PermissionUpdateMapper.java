package com.kkcloud.trainee.system.mapper;


import com.kkcloud.trainee.system.DTO.UpdateDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PermissionUpdateMapper {
    void updateDetails(UpdateDTO updateDTO);


}
