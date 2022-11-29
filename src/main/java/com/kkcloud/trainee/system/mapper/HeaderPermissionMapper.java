package com.kkcloud.trainee.system.mapper;


import com.kkcloud.trainee.system.DTO.HeaderDTO;
import com.kkcloud.trainee.system.model.PermissionHeader;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HeaderPermissionMapper {
    List<PermissionHeader> findById(HeaderDTO headerDTO);
}
